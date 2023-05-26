
import 'package:dwm_halimaa/pages/widgets/drawer.widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home Page"),
      ),
      drawer: MyDrawer(),
      body: const Center(
        child: Text(
          "DWM", style: TextStyle(fontSize: 33, color: Colors.teal),
        ),
      ),
    );
  }
}
