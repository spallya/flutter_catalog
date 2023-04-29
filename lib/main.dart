import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';
import 'package:google_fonts/google_fonts.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.indigo,
          fontFamily: GoogleFonts.lato().fontFamily,
          textTheme: GoogleFonts.latoTextTheme()),
      initialRoute: "/",
      routes: {
        "/": (context) => const LoginPage(),
        CatalogAppRoutes.homeRoute: (context) => const HomePage(),
        CatalogAppRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}
