import 'package:first_app/Screens/Homepage.dart';
import 'package:first_app/Screens/Login_page.dart';
import 'package:first_app/utills/routes.dart';
import 'package:first_app/widgets/themes.dart';
import 'package:flutter/material.dart';
import 'Screens/Homepage.dart';
import 'Screens/Login_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home:Homepage(),
      // themeMode: ThemeMode.dark,
      themeMode: ThemeMode.light,
      theme: Mytheme.lighttheme(context),
      debugShowCheckedModeBanner: false,
      // darkTheme: ThemeData(
      // primarySwatch: Colors.deepPurple,
      // brightness: Brightness.dark,
      // ),
      routes: {
        "/": (context) => Loginpage(),
        MyRoutes.homeRoute: (context) =>
            Homepage(), // same function as upword home: Homepaeg,
        MyRoutes.loginRoute: (context) => Loginpage(),
      },
    );
  }
}
