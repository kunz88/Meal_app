import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:meals/cubits/meals_state.dart';
import 'package:meals/data/dummy_data.dart';


class MealsCubit extends Cubit<MealsState> {
  MealsCubit() : super(const MealsState(meals: dummyMeals));

  
}
