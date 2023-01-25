import 'package:pesto/domain/model/recipe_ingredient.dart';
import 'package:pesto/domain/model/recipe_warning.dart';

class Recipe {
  final String imagePath;
  final String title;
  final String description;
  final List<RecipeWarning> warnings;
  final List<RecipeIngredient> ingridients;

  Recipe({
    required this.imagePath,
    required this.title,
    required this.description,
    required this.warnings,
    required this.ingridients,
  });

  String get id => title.toLowerCase().replaceAll(' ', '-');
}
