
import 'package:dwm_halimaa/pages/counter.page.dart';
import 'package:dwm_halimaa/pages/home.page.dart';
import 'package:dwm_halimaa/pages/product.page.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(const DwmHalima());
}
class DwmHalima extends StatelessWidget {
  const DwmHalima({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/":(context)=> const HomePage(),
        "/Counter":(context)=> CounterPage(),
        "/Product":(context)=> const ProductPage(),
      },
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
        textTheme: const TextTheme(
          bodyMedium: TextStyle(fontSize: 22, color: Colors.black),
          bodyLarge: TextStyle(fontSize: 32, color: Colors.teal),
          bodySmall: TextStyle(fontSize: 18, color: Colors.black),
        ),
        iconTheme: const IconThemeData(
          color: Colors.teal,
          size: 24,
        ),
      ),
    );
  }
}

