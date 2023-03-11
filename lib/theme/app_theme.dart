import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.indigo;
  static final ThemeData lightTheme = ThemeData.light().copyWith(
    //color primario
    primaryColor: Colors.indigo,

    //AppBar theme
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),

    //TextButton theme
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(foregroundColor: primary),
    ),

    //Floating action button
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
    ),

    //Elevate button
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        shape: const StadiumBorder(),
        elevation: 0,
      ),
    ),

    // Inputs
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(20), topRight: Radius.circular(20)),
      ),
    ),
  );

  static final ThemeData darkTheme = ThemeData.dark().copyWith();
}
