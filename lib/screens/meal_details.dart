import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';

class MealDetailsScreen extends StatelessWidget {
  const MealDetailsScreen(this.meal, {super.key});

  final Meal meal;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
        meal.title,
        style: const TextStyle(color: Colors.white),
      )),
      body: Image.network(      
        meal.imageUrl,width: 
        double.infinity,
        height: 300,
        fit:BoxFit.cover
        ),
    );
  }
}
