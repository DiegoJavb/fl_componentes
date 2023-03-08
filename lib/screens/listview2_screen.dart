import 'package:flutter/material.dart';

class Listview2Screen extends StatelessWidget {
  const Listview2Screen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    const options = ['batman', 'superman', 'spiderman', 'antman'];

    return Scaffold(
      appBar: AppBar(
        title: const Text('data'),
      ),
      body: ListView.separated(
        itemCount: options.length,
        itemBuilder: (context, index) => ListTile(
          title: Text(options[index]),
          trailing: const Icon(
            Icons.arrow_forward_ios,
            color: Colors.indigo,
          ),
          onTap: () {
            // final heroe = options[index];
          },
        ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
