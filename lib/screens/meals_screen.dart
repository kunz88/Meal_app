import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/widgets/meal_item.dart';

class MealScreen extends StatelessWidget {
  const MealScreen({required this.title, required this.meals, super.key});

  final String title;
  final List<Meal> meals;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          title,
          style: Theme.of(context).textTheme.titleLarge!.copyWith(
                color: Theme.of(context).colorScheme.onBackground,
              ),
        ),
      ),
      body: meals.isEmpty
          ? const Center(
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    "no meals",
                    style: TextStyle(color: Colors.white,fontSize: 26),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Text(
                    "try to find a different meal",
                    style: TextStyle(color: Colors.white),
                  )
                ],
              ),
            )
          : ListView.builder(
              itemCount: meals.length,
              itemBuilder: (context, index) => MealItem(meals[index])
            ),
    );
  }
}
