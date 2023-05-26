import 'package:flutter/material.dart';
class MyDrawerHeader extends StatelessWidget {
  const MyDrawerHeader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DrawerHeader(
      decoration: BoxDecoration(
          gradient: LinearGradient(colors: [
            Colors.black,
            Theme.of(context).primaryColor
          ])
      ),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          CircleAvatar(
            backgroundImage: AssetImage("images/profile.jpg"),
            radius: 50,
          ),
          CircleAvatar(
            backgroundImage: AssetImage("images/logo.jpg"),
            radius: 30,
          ),
        ],
      ),
    );
  }
}
