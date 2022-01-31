import 'package:flutter/material.dart';
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
          // TODO: add recipes grid screen
          return const Center(
            child: Text('Recipe Screen'),
          );
        } else {
          return const Center(child: CircularProgressIndicator());
        }
      },
    );
  }
}
