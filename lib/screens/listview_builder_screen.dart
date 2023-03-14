import 'package:fl_componentes/theme/app_theme.dart';
import 'package:flutter/material.dart';

class ListviewBuilderScreen extends StatefulWidget {
  const ListviewBuilderScreen({Key? key}) : super(key: key);

  @override
  State<ListviewBuilderScreen> createState() => _ListviewBuilderScreenState();
}

class _ListviewBuilderScreenState extends State<ListviewBuilderScreen> {
  List<int> imagesIds = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];
  ScrollController scrollController = ScrollController();
  bool isLoading = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    scrollController.addListener(() {
      // print(
      //   '${scrollController.position.pixels}, ${scrollController.position.maxScrollExtent}',
      // );
      if ((scrollController.position.pixels + 500 >=
          scrollController.position.maxScrollExtent)) {
        fetchData();
      }
    });
  }

  Future fetchData() async {
    if (isLoading) return;
    setState(() {
      isLoading = true;
    });

    await Future.delayed(const Duration(seconds: 2));
    add5();

    setState(() {
      isLoading = false;
    });
  }

  void add5() {
    final lastId = imagesIds.last;
    imagesIds.addAll([1, 2, 3, 4, 5].map((e) => lastId + e));
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        removeBottom: true,
        child: Stack(
          children: [
            ListView.builder(
              physics: const BouncingScrollPhysics(),
              controller: scrollController,
              itemCount: imagesIds.length,
              itemBuilder: (_, int index) {
                return FadeInImage(
                  width: double.infinity,
                  height: 300,
                  placeholder: const AssetImage('assets/jar-loading.gif'),
                  image: NetworkImage(
                      'https://picsum.photos/500/300?image=${imagesIds[index]}'),
                  fit: BoxFit.cover,
                );
              },
            ),
            Positioned(
              bottom: 40,
              left: (size.width * 0.5) - 30,
              child: const _LoadingIcon(),
            ),
          ],
        ),
      ),
    );
  }
}

class _LoadingIcon extends StatelessWidget {
  const _LoadingIcon({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10),
      width: 60,
      height: 60,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.9),
        shape: BoxShape.circle,
      ),
      child: const CircularProgressIndicator(
        color: AppTheme.primary,
      ),
    );
  }
}
