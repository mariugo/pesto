import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:pesto/data/repository/recipes_impl.dart';
import 'package:pesto/domain/model/repository/recipes.dart';

final recipesProvider = Provider<RecipesRepository>(
  (ref) => RecipesRepositoryImpl(),
);
