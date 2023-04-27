import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lethimcook/screens/categories_meals_screen.dart';
import 'package:lethimcook/screens/categories_screen.dart';
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
          fontFamily: GoogleFonts.raleway.toString(),
          textTheme: theme.textTheme.copyWith(
              titleLarge: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontFamily: GoogleFonts.robotoCondensed.toString()))),
      initialRoute: AppRoutes.home,
      routes: {
        AppRoutes.home: (ctx) => const CategoriesScreen(),
        AppRoutes.categoriesMeals: (ctx) => const CategoriesMealsScreen()
      },
    );
  }
}
