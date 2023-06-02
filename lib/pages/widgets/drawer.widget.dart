import 'package:dwm_halimaa/pages/widgets/drawer.header.dart';
import 'package:dwm_halimaa/pages/widgets/drawer.item.dart';
import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          const MyDrawerHeader(),
          MyDrawerItem(
              title: "Home",
              itemIcon: const Icon(Icons.home),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/");
              }),
          Divider(
            color: Theme.of(context).primaryColor,
            height: 25,
          ),
          MyDrawerItem(
              title: "Counter",
              itemIcon: const Icon(Icons.add_circle),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/Counter");
              }),
          Divider(
            color: Theme.of(context).primaryColor,
            height: 18,
          ),
          MyDrawerItem(
              title: "Product",
              itemIcon: const Icon(Icons.add_circle_outline),
              onTap: () {
                Navigator.of(context).pop();
                Navigator.pushNamed(context, "/Product");
              }),
          Divider(
            color: Theme.of(context).primaryColor,
            height: 18,
          ),
        ],
      ),
    );
  }
}
