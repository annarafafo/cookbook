import 'package:flutter/material.dart';
import 'package:lethimcook/components/category_item.dart';
import 'package:lethimcook/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Let Him COOK!')),
      body: GridView(
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 200,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20),
        children:
            DUMMY_CATEGORIES.map((category) => CategoryItem(category)).toList()
      ),
    );
  }
}
