import 'package:flutter/material.dart';
import 'package:project/Themes.dart';
import 'package:project/Home.dart';
import 'package:project/loginpage.dart';
import 'package:project/utils/Routes.dart';

void main() {
  runApp(const MyApp());
}

int days = 3000;

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: MeraTheme.lighttheme(context),
      darkTheme: MeraTheme.darktheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => Login(),
        MyRoutes.homeRoute: (context) => Home(),
      },
    );
  }
}
