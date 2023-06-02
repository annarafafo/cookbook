import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lethimcook/data/dummy_data.dart';
import 'package:lethimcook/models/meal.dart';
import 'package:lethimcook/models/settings.dart';
import 'package:lethimcook/screens/categories_meals_screen.dart';
import 'package:lethimcook/screens/meal_detail_screen.dart';
import 'package:lethimcook/screens/settings_screen.dart';
import 'package:lethimcook/screens/tabs_screen.dart';
import 'package:lethimcook/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  List<Meal> _availableMeals = dummyMeals;
  Settings settings = Settings();

  void _setConfigurations(Settings settings) {
    setState(() {
      _availableMeals = dummyMeals.where((meal) {
        final filterGluten = settings.isGlutenFree && !meal.isGlutenFree;
        final filterLactose = settings.isLactoseFree && !meal.isLactoseFree;
        final filterVegan = settings.isVegan && !meal.isVegan;
        final filterVegetarian = settings.isVegetarian && !meal.isVegetarian;

        return !filterGluten &&
            !filterLactose &&
            !filterVegan &&
            !filterVegetarian;
      }).toList();
    });
  }

  @override
  Widget build(BuildContext context) {
    final theme = ThemeData();
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
          colorScheme: theme.colorScheme
              .copyWith(primary: Colors.pink, secondary: Colors.amber),
          canvasColor: const Color.fromRGBO(255, 254, 229, 1),
          fontFamily: GoogleFonts.raleway().fontFamily,
          textTheme: theme.textTheme.copyWith(
              titleSmall: TextStyle(
                  fontSize: 20,
                  color: Colors.white,
                  fontFamily: GoogleFonts.raleway().fontFamily),
              titleMedium: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: GoogleFonts.robotoCondensed().fontFamily),
              titleLarge: TextStyle(
                  color: Colors.black,
                  fontSize: 20,
                  fontFamily: GoogleFonts.robotoCondensed().fontFamily))),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (ctx) => const TabsScreen(),
        AppRoutes.categoriesMeals: (ctx) =>
            CategoriesMealsScreen(meals: _availableMeals),
        AppRoutes.mealDetail: (ctx) => const MealDetailScreen(),
        AppRoutes.settings: (ctx) => SettingsScreen(
              settings: settings,
              setConfigurations: _setConfigurations,
            )
      },
    );
  }
}
