import 'package:flutter/material.dart';
import '../components/components.dart';
import '../models/explore_data.dart';
import '../api/mock_fooderlich_service.dart';

class ExploreScreen extends StatelessWidget {
  final mockService = MockFooderlichService();

  ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: mockService.getExploreData(),
      builder: (context, snapshot) {
        // TODO: add a nested list views
        if (snapshot.connectionState == ConnectionState.done) {
          final data = snapshot.data as ExploreData;
          final recipes = data.todayRecipes;
          return TodayRecipeListView(key: key, recipes: recipes);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      },
    );
  }
}
