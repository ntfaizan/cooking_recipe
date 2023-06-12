import 'package:cooking_recipe/models/recipe.dart';
import 'package:cooking_recipe/widgets/recipe_card.dart';
import 'package:flutter/material.dart';

class RecipePage extends StatelessWidget {
  final List<Recipe> filteredRecipesList;
  const RecipePage({super.key, required this.filteredRecipesList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: Colors.grey,
      body: ListView.builder(
        itemCount: filteredRecipesList.length,
        itemBuilder: (context, index) => RecipeCard(
          recipe: filteredRecipesList[index],
        ),
      ),
    );
  }
}
