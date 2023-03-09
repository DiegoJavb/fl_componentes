import 'package:flutter/material.dart';
import 'package:fl_componentes/theme/app_theme.dart';

class CustomCardType1 extends StatelessWidget {
  const CustomCardType1({super.key});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Column(
        children: [
          const ListTile(
            leading: Icon(Icons.photo_camera_back, color: AppTheme.primary),
            title: Text('Titulo'),
            subtitle: Text(
              'Aliquip minim adipisicing eiusmod minim in commodo exercitation pariatur sunt. Excepteur veniam quis sunt nisi id nostrud ipsum duis consectetur sit. Culpa consectetur ',
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(right: 5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                TextButton(onPressed: () {}, child: const Text('Cancel')),
                TextButton(onPressed: () {}, child: const Text('Ok')),
              ],
            ),
          )
        ],
      ),
    );
  }
}
