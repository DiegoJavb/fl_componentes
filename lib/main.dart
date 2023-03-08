import 'package:flutter/material.dart';
import 'package:fl_componentes/router/app_routes.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Material App',
      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.getAppRoutes(),
      onGenerateRoute: (settings) => AppRoutes.onGenerateRoute(settings),
      theme: ThemeData.light().copyWith(
        //color primario
        primaryColor: Colors.indigo[300],

        //AppBar theme
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.indigo[300],
          elevation: 0,
        ),
      ),
    );
  }
}
