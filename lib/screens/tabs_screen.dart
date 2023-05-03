import 'package:flutter/material.dart';
import 'package:lethimcook/screens/categories_screen.dart';
import 'package:lethimcook/screens/favorite_meals_screen.dart';

import '../components/main_drawer.dart';

class TabsScreen extends StatelessWidget {
  const TabsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: Text('Let Him COOK!',
              style: Theme.of(context).textTheme.titleSmall),
          bottom:TabBar(tabs: const [
            Tab(icon: Icon(Icons.category), text: 'Categorias'),
            Tab(icon: Icon(Icons.star), text: 'Favoritos')
          ],
          indicatorColor: Theme.of(context).colorScheme.secondary,
          ), 
        ),
        drawer: const MainDrawer(),
        body: const TabBarView(children: [CategoriesScreen(), FavoriteMeals()]),
      ),
    );
  }
}
