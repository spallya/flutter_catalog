import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_catalog/models/catalog.dart';
import 'package:flutter_catalog/widgets/drawer.dart';

import '../widgets/item_widget.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    loadCatalogData();
  }

  void loadCatalogData() async {
    await Future.delayed(const Duration(seconds: 2));
    final catalogJson =
        await rootBundle.loadString("assets/files/catalog.json");
    final decodedData = jsonDecode(catalogJson);
    var products = decodedData["products"];
    CatalogModel.items =
        List.from(products).map<Item>((item) => Item.fromMap(item)).toList();
    setState(() {});
  }

  final int days = 30;

  final String name = "Spallya Omar";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Catalog App")),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: (CatalogModel.items != null && CatalogModel.items!.isNotEmpty)
            ? ListView.builder(
                itemCount: CatalogModel.items?.length,
                itemBuilder: (context, index) {
                  return ItemWidget(item: CatalogModel.items![index]);
                },
              )
            : const Center(child: CircularProgressIndicator()),
      ),
      drawer: CatalogAppDrawer(),
    );
  }
}
