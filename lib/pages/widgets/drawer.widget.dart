import 'package:dwm_halimaa/pages/widgets/drawer.header.dart';
import 'package:dwm_halimaa/pages/widgets/drawer.item.dart';
import 'package:flutter/material.dart';
class MyDrawer extends StatelessWidget {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Drawer(
    child: Column(
    children: [
      MyDrawerHeader(),
      MyDrawerItem(title: "Home", itemIcon: Icon(Icons.home), onTap: (){
        Navigator.of(context).pop();
        Navigator.pushNamed(context, "/");
      }),

      MyDrawerItem(title: "Counter", itemIcon: Icon(Icons.add_circle), onTap: (){
        Navigator.of(context).pop();
        Navigator.pushNamed(context, "/Counter");
      }),

      MyDrawerItem(title: "Product", itemIcon: Icon(Icons.add_circle_outline), onTap: (){
        Navigator.of(context).pop();
        Navigator.pushNamed(context, "/Product");
      }),
    ],
    ),
    );
  }
}
