import 'package:pesto/domain/model/recipe_ingredient.dart';
import 'package:pesto/domain/model/recipe_warning.dart';

class Recipe {
  final String imagePath;
  final String title;
  final String description;
  final List<RecipeWarning> warnings;
  final List<RecipeIngredient> ingredients;

  const Recipe({
    required this.imagePath,
    required this.title,
    required this.description,
    this.warnings = const [],
    this.ingredients = const [],
  });

  String get id => title.toLowerCase().replaceAll(' ', '-');
}
