import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final options = const ['batman', 'superman', 'spiderman', 'antman'];

    return Scaffold(
        appBar: AppBar(
          title: const Text('data'),
        ),
        body: ListView(
          children: [
            ...options
                .map((hero) => ListTile(
                      title: Text(hero),
                      trailing: const Icon(Icons.add),
                    ))
                .toList(),
          ],
        ));
  }
}
