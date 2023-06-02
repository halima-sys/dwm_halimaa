import 'dart:convert';

import 'package:dwm_halimaa/pages/product.details.dart';
import 'package:dwm_halimaa/pages/product.item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductPage extends StatefulWidget {
  const ProductPage({Key? key}) : super(key: key);

  @override
  State<ProductPage> createState() => _ProductPageState();
}

class _ProductPageState extends State<ProductPage> {
  List<dynamic> products = [];
  @override
  void initState() {
    super.initState();
    http.get(Uri.parse("http://172.26.96.1:9000/products")).then((resp) {
      setState(() {
        products = json.decode(resp.body);
      });
    }).catchError((err) {
      print("********** Error **********");
      print(err);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Products"),
        ),
        body: ListView.builder(
          itemBuilder: (context, index) {
            return ProductItem(
              product: products[index],
              details: false,
            );
          },
          itemCount: products.length,
        ));
  }
}
