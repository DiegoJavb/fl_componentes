import 'package:flutter/material.dart';

class AvatarScreen extends StatelessWidget {
  const AvatarScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const String imageUrl =
        'https://images.mubicdn.net/images/cast_member/23806/cache-3373-1600241193/image-w856.jpg?size=800x';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Stan Lee'),
        actions: [
          Container(
            margin: const EdgeInsets.only(right: 5),
            child: CircleAvatar(
                backgroundColor: Colors.indigo[900], child: const Text('SL')),
          )
        ],
      ),
      body: const Center(
        child: CircleAvatar(
          maxRadius: 125,
          backgroundImage: NetworkImage(imageUrl),
        ),
      ),
    );
  }
}
