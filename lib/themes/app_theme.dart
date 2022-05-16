import 'package:flutter/material.dart';

class AppTheme {
  static const Color primary = Colors.green;

  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      appBarTheme: const AppBarTheme(color: primary, elevation: 0));

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primary,
    floatingActionButtonTheme: const FloatingActionButtonThemeData(
      backgroundColor: primary,
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(primary: AppTheme.primary),
    ),
    appBarTheme: const AppBarTheme(
      color: primary,
      elevation: 0,
    ),
    // Elevate Buttons
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
          primary: primary, shape: const StadiumBorder(), elevation: 0),
    ),
    // InputDecorationTheme
    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primary),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomLeft: Radius.circular(32), topRight: Radius.circular(32))
      ),
      focusedBorder: OutlineInputBorder(
         borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(bottomRight: Radius.circular(32), topLeft: Radius.circular(32))
      ),
      border: OutlineInputBorder(
         borderSide: BorderSide(color: primary),
        borderRadius: BorderRadius.only(topRight: Radius.circular(32), bottomLeft: Radius.circular(32))
      )
    )
  );
}
