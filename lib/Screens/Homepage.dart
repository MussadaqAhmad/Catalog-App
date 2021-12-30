import 'package:first_app/widgets/Drawer.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(Homepage());
}

class Homepage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        "Catalog App",
        style: TextStyle(color: Colors.black),
      )),
      drawer: MyDrawer(),
    );
  }
}
