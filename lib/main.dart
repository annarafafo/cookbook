import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lethimcook/screens/categories_meals_screen.dart';
import 'package:lethimcook/screens/categories_screen.dart';
import 'package:lethimcook/screens/meal_detail_screen.dart';
import 'package:lethimcook/utils/app_routes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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
        AppRoutes.home: (ctx) => const CategoriesScreen(),
        AppRoutes.categoriesMeals: (ctx) => const CategoriesMealsScreen(),
        AppRoutes.mealDetail: (ctx) => const MealDetailScreen()
      },
    );
  }
}
