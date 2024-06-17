import 'package:flutter/material.dart';
import 'package:meal_app/data/dummy_data.dart';
import 'package:meal_app/models/categories.dart';
import 'package:meal_app/screens/meals_screen.dart';
import 'package:meal_app/widgets/category_grid_item.dart';

class CategoriesScreen extends StatelessWidget {
  const CategoriesScreen({super.key});

  void _selectCategory(BuildContext context,Category category) {

    final selectedMeals = dummyMeals.where((meal) => meal.categories.contains(category.id));
    Navigator.of(context).push(MaterialPageRoute(
        builder: (ctx) => MealScreen(title: category.title, meals: selectedMeals.toList())));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            title: Text("Pick your category",
                style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                    color: Theme.of(context).colorScheme.onBackground))),
        body: GridView(
          padding: const EdgeInsets.all(20),
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              childAspectRatio: 3 / 2,
              crossAxisSpacing: 20,
              mainAxisSpacing: 20),
          children: [
            // availbleCategories.map((category)=> CategoryGridItem(category)).toList()
            for (final category in availableCategories)
              CategoryGridItem(category, () {
                _selectCategory(context,category);
              }),
          ],
        ));
  }
}
