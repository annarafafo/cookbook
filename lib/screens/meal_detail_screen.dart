import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lethimcook/components/list_container.dart';
import 'package:lethimcook/components/section_title.dart';
import 'package:lethimcook/models/meal.dart';

class MealDetailScreen extends StatelessWidget {
  const MealDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final meal = ModalRoute.of(context)?.settings.arguments as Meal;
    return Scaffold(
      appBar: AppBar(
        title: Text(meal.title, style: Theme.of(context).textTheme.titleSmall),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 300,
              width: double.infinity,
              child: Image.network(
                meal.imageUrl,
                fit: BoxFit.cover,
              ),
            ),
            const SectionTitle('Ingredientes'),
            ListContainer(
              ListView.builder(
                  itemCount: meal.ingredients.length,
                  itemBuilder: ((context, index) {
                    return Card(
                      color: Theme.of(context).colorScheme.secondary,
                      child: Padding(
                          padding: const EdgeInsets.symmetric(
                              vertical: 5, horizontal: 10),
                          child: Text(meal.ingredients[index])),
                    );
                  })),
            ),
            const SectionTitle('Passos'),
            ListContainer(ListView.builder(
                itemCount: meal.steps.length,
                itemBuilder: ((context, index) {
                  return ListTile(
                    leading: CircleAvatar(
                      backgroundColor: Theme.of(context).colorScheme.primary,
                      child: Text('${index + 1}'),
                    ),
                    title: Text(
                      meal.steps[index],
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 16,
                          fontFamily: GoogleFonts.raleway().fontFamily),
                    ),
                  );
                })))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){}, child: const Icon(Icons.star),),
    );
  }
}
