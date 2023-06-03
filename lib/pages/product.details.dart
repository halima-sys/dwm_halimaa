import 'dart:convert';

import 'package:dwm_halimaa/pages/product.item.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class ProductDetails extends StatefulWidget {
  final int productId;
  ProductDetails({Key? key, required this.productId}) : super(key: key);

  @override
  State<ProductDetails> createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  dynamic product;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    http
        .get(Uri.parse("http://172.26.96.1:9000/products/${widget.productId}"))
        .then((resp) {
      setState(() {
        product = json.decode(resp.body);
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
        title: Text("Product Details ==> ${widget.productId}"),
      ),
      body: Center(
        child: ProductItem(
          product: product,
          details: true,
        ),
      ),
    );
  }
}
