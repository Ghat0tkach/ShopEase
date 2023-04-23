// ignore_for_file: file_names

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:velocity_x/velocity_x.dart';

class MeraTheme {
  static ThemeData lighttheme(BuildContext context) => ThemeData(
      fontFamily: GoogleFonts.lato().fontFamily,
      cardColor: CreamColor,
      hintColor: darkBluishColor,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
      secondaryHeaderColor: darkBluishColor,
      primaryColor: Colors.white,
      appBarTheme: AppBarTheme(
        color: Color.fromARGB(255, 173, 165, 165),
        elevation: 0.0,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
      ));
  static ThemeData darktheme(BuildContext context) => ThemeData(
      hintColor: CreamColor,
      primaryColor: darkBluishColor,
      secondaryHeaderColor: voidColor,
      cardColor: darkBluishColor,
      canvasColor: CreamColor,
      colorScheme: ColorScheme.dark(),
      fontFamily: GoogleFonts.lato().fontFamily,
      primaryTextTheme: GoogleFonts.latoTextTheme(),
      appBarTheme: AppBarTheme(
        color: darkBluishColor,
        iconTheme: const IconThemeData(color: Colors.black),
        titleTextStyle: Theme.of(context).textTheme.titleLarge,
      ));

  static Color CreamColor = const Color.fromARGB(255, 163, 163, 158);
  static Color darkBluishColor = Vx.gray600;
  static Color lightBluishColor = Vx.purple400;
  static Color voidColor = Color.fromARGB(255, 0, 0, 0);
}
