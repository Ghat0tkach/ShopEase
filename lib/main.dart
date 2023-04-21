import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
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
      theme: ThemeData(
          fontFamily: GoogleFonts.lato().fontFamily,
          primaryTextTheme: GoogleFonts.latoTextTheme()),
      darkTheme: ThemeData(brightness: Brightness.dark),
      initialRoute: "/Home",
      routes: {
        "/": (context) => Login(),
        "/Home": (context) => Home(),
      },
    );
  }
}
