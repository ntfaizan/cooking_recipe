import 'package:cooking_recipe/data/recipes_list.dart';
import 'package:cooking_recipe/pages/recipe_page.dart';
import 'package:flutter/material.dart';

import '../models/category.dart';

class CategoryContainer extends StatelessWidget {
  final Category category;
  const CategoryContainer({super.key, required this.category});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
       
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => RecipePage(
              filteredRecipesList: recipesList
                  .where((recipe) =>
                      recipe.isGlutenFree == category.isGlutenFree &&
                      recipe.isLactoseFree == category.isLactoseFree &&
                      recipe.isVegan == category.isVegan &&
                      recipe.isVegetarian == category.isVegetarian)
                  .toList(),
            ),
          ),
        );
      },
      child: Container(
        color: Colors.amber,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text('isGlutenFree: ${category.isGlutenFree ? "Yes" : "No"}'),
            Text('isLactoseFree: ${category.isLactoseFree}'),
            Text('isVegan ${category.isVegan}'),
            Text('isVegetarian:${category.isVegetarian}'),
          ],
        ),
      ),
    );
  }
}
