import 'package:flutter/material.dart';
import 'package:flutter_catalog/utils/routes.dart';
import 'package:flutter_catalog/widgets/themes.dart';
import 'pages/login_page.dart';
import 'pages/home_page.dart';

void main(List<String> args) {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      themeMode: ThemeMode.system,
      theme: CatalogAppTheme.lightTheme(),
      darkTheme: CatalogAppTheme.darkTheme(),
      initialRoute: CatalogAppRoutes.homeRoute,
      debugShowCheckedModeBanner: false,
      routes: {
        "/": (context) => const LoginPage(),
        CatalogAppRoutes.homeRoute: (context) => HomePage(),
        CatalogAppRoutes.loginRoute: (context) => const LoginPage()
      },
    );
  }
}
