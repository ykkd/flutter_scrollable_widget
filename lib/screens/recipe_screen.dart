import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/simple_recipe.dart';
import '../api/mock_fooderlich_service.dart';

class RecipeScreen extends StatelessWidget {
  final exploreService = MockFooderlichService();

  RecipeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: exploreService.getRecipes(),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.done) {
          final data = snapshot.data as List<SimpleRecipe>;
          return RecipesGridView(recipes: data);
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
