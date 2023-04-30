import 'package:flutter/material.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  final int days = 30;
  final String name = "Spallya Omar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Catalog App")
      ),
      body: Center(
        child: Container(
          child: Text("Welcome to $days days of flutter with $name!!"),
        ),
      ),
      drawer: CatalogAppDrawer(),
    );
  }
}
