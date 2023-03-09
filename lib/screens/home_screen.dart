import 'package:flutter/material.dart';
import 'package:fl_componentes/theme/app_theme.dart';
import 'package:fl_componentes/router/app_routes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final menuOptions = AppRoutes.menuOptions;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Componentes en Flutter'),
      ),
      body: ListView.separated(
        itemCount: AppRoutes.menuOptions.length,
        itemBuilder: (context, index) {
          return ListTile(
            leading: Icon(
              menuOptions[index].icon,
              color: AppTheme.primary,
            ),
            title: Text(menuOptions[index].name),
            onTap: () => Navigator.pushNamed(
              context,
              menuOptions[index].route,
            ),
          );
        },
        // itemBuilder: (BuildContext context, int index) => ListTile(
        //   leading: const Icon(Icons.accessibility),
        //   title: const Text('Nobre de la ruta'),
        //   onTap: () {
        //     Navigator.pushNamed(context, 'alert');
        //   },
        // ),
        separatorBuilder: (_, __) => const Divider(),
      ),
    );
  }
}
