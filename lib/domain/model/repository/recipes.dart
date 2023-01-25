import 'package:pesto/domain/model/recipe.dart';

abstract class RecipesRepository {
  List<Recipe> getRecipes();
}
