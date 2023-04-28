import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lethimcook/components/category_item.dart';
import 'package:lethimcook/data/dummy_data.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Center(
        child: Text('Let Him COOK!',
            style: Theme.of(context).textTheme.titleSmall),
      )),
      body: GridView(
          gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
              maxCrossAxisExtent: 200,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: dummyCategories
              .map((category) => CategoryItem(category))
              .toList()),
    );
  }
}
