import 'package:flutter/material.dart';

class MyAppTheme {
  static List<ThemeData> themes = [
    ThemeData(
      primarySwatch: Colors.green,
      textTheme: const TextTheme(
        bodyMedium: TextStyle(fontSize: 25, color: Colors.black),
        bodyLarge: TextStyle(fontSize: 32, color: Colors.black),
        bodySmall: TextStyle(fontSize: 18, color: Colors.deepOrange),
      ),
      iconTheme: const IconThemeData(
        color: Colors.black,
        size: 25,
      ),
    ),
    ThemeData(
      primarySwatch: Colors.deepOrange,
      textTheme: const TextTheme(
        bodyMedium: TextStyle(fontSize: 25, color: Colors.white),
        bodyLarge: TextStyle(fontSize: 32, color: Colors.white),
        bodySmall: TextStyle(fontSize: 18, color: Colors.greenAccent),
      ),
      iconTheme: const IconThemeData(
        color: Colors.green,
        size: 25,
      ),
    ),
  ];
}
