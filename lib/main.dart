import 'package:flutter/material.dart';
import 'package:project/Home.dart';
import 'package:project/loginpage.dart';

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
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(brightness: Brightness.dark),
      routes: {
        "/": (context) => Login(),
        "/login": (context) => Home(),
      },
    );
  }
}
