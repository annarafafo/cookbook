import 'package:flutter/material.dart';
import 'package:lethimcook/screens/categories_screen.dart';

import '../components/main_drawer.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('CookBook',
            style: Theme.of(context).textTheme.titleSmall),
      ),
      drawer: const MainDrawer(),
      body: const CategoriesScreen(),
    );
  }
}
