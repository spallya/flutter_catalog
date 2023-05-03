import 'package:flutter/material.dart';

import '../models/catalog.dart';

class ItemGridWidget extends StatelessWidget {
  final Item item;
  const ItemGridWidget({super.key, required this.item});

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.antiAlias,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
      child: GridTile(
          header: Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(color: Colors.indigo),
              child: Text(
                item.name,
                style: const TextStyle(color: Colors.white),
              )),
          footer: Container(
              padding: const EdgeInsets.all(12),
              decoration: const BoxDecoration(color: Colors.black),
              child: Text(
                "\$${item.price.toString()}",
                style: const TextStyle(color: Colors.white),
              )),
          child: Image.network(item.image)),
    );
  }
}
