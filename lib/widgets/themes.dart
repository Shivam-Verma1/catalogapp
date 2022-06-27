import 'package:flutter/material.dart';

class MyTheme {
  //LIGHTTHEME function
  static ThemeData lightTheme(BuildContext context) => ThemeData(
      primarySwatch: Colors.indigo,
      iconTheme: const IconThemeData(color: Colors.black),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0.0,
      ));

//DARKTHEME
  static ThemeData darkTheme(BuildContext context) =>
      ThemeData(brightness: Brightness.dark);
}
