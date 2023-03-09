import 'package:flutter/material.dart';

import '../widgets/widgets.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    String name = 'Un hermoso paisaje landscape';
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        children: [
          const CustomCardType1(),
          const SizedBox(height: 25),
          CustomCardType2(
            imageUrl:
                'https://img.freepik.com/free-vector/nature-scene-with-river-hills-forest-mountain-landscape-flat-cartoon-style-illustration_1150-37326.jpg?w=2000',
            name: name,
          ),
          const SizedBox(height: 25),
          const CustomCardType2(
            imageUrl:
                'https://iso.500px.com/wp-content/uploads/2014/06/W4A2827-1-1500x1000.jpg',
          ),
          const SizedBox(height: 25),
          CustomCardType2(
            imageUrl:
                'https://www.mickeyshannon.com/photos/landscape-photography.jpg',
            name: name,
          ),
        ],
      ),
    );
  }
}
