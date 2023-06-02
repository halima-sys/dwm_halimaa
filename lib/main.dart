import 'package:dwm_halimaa/pages/counter.page.dart';
import 'package:dwm_halimaa/pages/home.page.dart';
import 'package:dwm_halimaa/pages/product.details.dart';
import 'package:dwm_halimaa/pages/product.page.dart';
import 'package:dwm_halimaa/themes/theme.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const DwmHalima());
}

class DwmHalima extends StatelessWidget {
  const DwmHalima({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        "/": (context) => const HomePage(),
        "/Counter": (context) => CounterPage(),
        "/Product": (context) => const ProductPage(),
        "/productDetails": (context) => ProductDetails(
            productId: ModalRoute.of(context)!.settings.arguments as int),
      },
      theme: MyAppTheme.themes[0],
    );
  }
}
