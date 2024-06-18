import 'package:flutter/material.dart';
import 'package:meal_app/models/meal.dart';
import 'package:meal_app/widgets/meal_trait.dart';
import 'package:transparent_image/transparent_image.dart';

class MealItem extends StatelessWidget {



  const MealItem(this.meal,this.onSelectMeal, {super.key});



  final void Function(BuildContext context,Meal meal) onSelectMeal;
  final Meal meal;
  

  String get complexityText {
    return meal.complexity.name[0].toUpperCase() +
        meal.complexity.name.substring(1);
  }

    String get affordabilityText {
    return meal.affordability.name[0].toUpperCase() +
        meal.affordability.name.substring(1);
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.all(8),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      // serve insieme alla card e allo Stack per rendere effettivo il border radius
      clipBehavior: Clip.hardEdge,
      elevation: 2,
      child: InkWell(
        onTap: (){onSelectMeal(context,meal);},
        child: Stack(
          children: [
            // permette di utilizzare un placeholder in attesa che un immagine viene caricata
            FadeInImage(
              placeholder: MemoryImage(
                  kTransparentImage), // dalla libreria transparent_image, immagine sostitutiva
              image: NetworkImage(meal.imageUrl),
              height: 200,
              fit: BoxFit.cover,
              width: double.infinity,
            ),
            // permette di posizionare in maniere assoluta un widget in una stack
            Positioned(
                bottom: 0,
                left: 0,
                right: 0,
                child: Container(
                  color: Colors.black54,
                  padding:
                      const EdgeInsets.symmetric(vertical: 6, horizontal: 44),
                  child: Column(children: [
                    Text(
                      meal.title,
                      maxLines: 2,
                      textAlign: TextAlign.center,
                      softWrap: true,
                      overflow: TextOverflow
                          .ellipsis, // per testo molto lungo, aggiunge i puntini..
                      style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.white),
                    ),
                    const SizedBox(height: 12),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        MealTrait(
                            icon: Icons.schedule,
                            label: "${meal.duration} min"),
                        SizedBox(
                          width: 10,
                        ),
                        MealTrait(icon: Icons.work, label: complexityText),
                        SizedBox(
                          width: 10,
                        ),
                        MealTrait(icon: Icons.money_rounded, label:affordabilityText),
                      ],
                    )
                  ]),
                ))
          ],
        ),
      ),
    );
  }
}
