import 'package:flutter/material.dart';
import 'package:project/Themes.dart';
import 'package:project/pages/Cart_page.dart';
import 'package:project/pages/Home.dart';
import 'package:project/pages/login_page.dart';
import 'package:project/utils/Routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: MeraTheme.lighttheme(context),
      darkTheme: MeraTheme.darktheme(context),
      debugShowCheckedModeBanner: false,
      initialRoute: MyRoutes.homeRoute,
      routes: {
        "/": (context) => Login(),
        MyRoutes.homeRoute: (context) => Home(),
        MyRoutes.loginRoute: (context) => Login(),
        MyRoutes.cartRoute: (context) => CartPage(),
      },
    );
  }
}
