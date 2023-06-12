import 'package:cooking_recipe/data/category_list.dart';
import 'package:cooking_recipe/widgets/category_container.dart';
import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  const CategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Cooking Recipe'),
        centerTitle: true,
      ),
      body: GridView.count(
        crossAxisCount: 2,
        crossAxisSpacing: 2.5,
        mainAxisSpacing: 2.5,
        children: List.generate(categoryList.length, (index) {
          return CategoryContainer(
            category: categoryList[index],
          );
        }),
        // children: const [
        //   CategoryContainer(),
        //   CategoryContainer(),
        //   CategoryContainer(),
        //   CategoryContainer(),
        // ],
      ),
    );
  }
}
