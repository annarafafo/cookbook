enum Complexity { simple, medium, difficult }

enum Cost { cheap, fair, expensive }

class Meal {
  final String id;
  final List<String> categories;
  final List<String> ingredients;
  final List<String> steps;
  final String title;
  final String imageUrl;
  final int duration;
  final bool isGlutenFree;
  final bool isVegan;
  final bool isVegetarian;
  final bool isLactoseFree;
  final Complexity complexity;
  final Cost cost;

  const Meal({
    required this.id,
    required this.categories,
    required this.ingredients,
    required this.steps,
    required this.title,
    required this.imageUrl,
    required this.duration,
    required this.isGlutenFree,
    required this.isVegan,
    required this.isVegetarian,
    required this.isLactoseFree,
    required this.complexity,
    required this.cost,
  });
}
