import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CatalogAppTheme {
  static ThemeData lightTheme() => ThemeData(
      primarySwatch: Colors.indigo,
      fontFamily: GoogleFonts.lato().fontFamily,
      textTheme: GoogleFonts.latoTextTheme(),
      appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.black),
          titleTextStyle: TextStyle(
              color: Colors.black, fontSize: 20, fontWeight: FontWeight.bold)));

  static ThemeData darkTheme() => ThemeData(
      primarySwatch: Colors.blueGrey,
      fontFamily: GoogleFonts.lato().fontFamily,
      textTheme: GoogleFonts.latoTextTheme(),
      appBarTheme: const AppBarTheme(
          color: Colors.black,
          elevation: 0.0,
          iconTheme: IconThemeData(color: Colors.white),
          titleTextStyle: TextStyle(
              color: Colors.white, fontSize: 20, fontWeight: FontWeight.bold)));
}
