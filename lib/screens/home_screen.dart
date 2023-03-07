import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
        elevation: 0,
      ),
      body: ListView.separated(
        itemCount: 20,
        separatorBuilder: (BuildContext context, int index) => ListTile(
          leading: const Icon(Icons.accessibility),
          title: const Text('Nobre de la ruta'),
          onTap: () {
            // final route = MaterialPageRoute(
            //   builder: (context) {
            //     return const Listview1Screen();
            //   },
            // );
            // Navigator.push(context, route);
            Navigator.pushNamed(context, 'alert');
          },
        ),
        itemBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
