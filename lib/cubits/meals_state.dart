import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:meals/models/meal.dart';

part 'meals_state.freezed.dart';


@freezed
class MealsState with _$MealsState {

  const MealsState._();

  const factory MealsState({
    @Default([]) List<Meal> meals,
  }) = _MealsState;

  
}