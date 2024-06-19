// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'meals_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$MealsState {
  List<Meal> get meals => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MealsStateCopyWith<MealsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MealsStateCopyWith<$Res> {
  factory $MealsStateCopyWith(
          MealsState value, $Res Function(MealsState) then) =
      _$MealsStateCopyWithImpl<$Res, MealsState>;
  @useResult
  $Res call({List<Meal> meals});
}

/// @nodoc
class _$MealsStateCopyWithImpl<$Res, $Val extends MealsState>
    implements $MealsStateCopyWith<$Res> {
  _$MealsStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
  }) {
    return _then(_value.copyWith(
      meals: null == meals
          ? _value.meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MealsStateImplCopyWith<$Res>
    implements $MealsStateCopyWith<$Res> {
  factory _$$MealsStateImplCopyWith(
          _$MealsStateImpl value, $Res Function(_$MealsStateImpl) then) =
      __$$MealsStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Meal> meals});
}

/// @nodoc
class __$$MealsStateImplCopyWithImpl<$Res>
    extends _$MealsStateCopyWithImpl<$Res, _$MealsStateImpl>
    implements _$$MealsStateImplCopyWith<$Res> {
  __$$MealsStateImplCopyWithImpl(
      _$MealsStateImpl _value, $Res Function(_$MealsStateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? meals = null,
  }) {
    return _then(_$MealsStateImpl(
      meals: null == meals
          ? _value._meals
          : meals // ignore: cast_nullable_to_non_nullable
              as List<Meal>,
    ));
  }
}

/// @nodoc

class _$MealsStateImpl extends _MealsState {
  const _$MealsStateImpl({final List<Meal> meals = const []})
      : _meals = meals,
        super._();

  final List<Meal> _meals;
  @override
  @JsonKey()
  List<Meal> get meals {
    if (_meals is EqualUnmodifiableListView) return _meals;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_meals);
  }

  @override
  String toString() {
    return 'MealsState(meals: $meals)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MealsStateImpl &&
            const DeepCollectionEquality().equals(other._meals, _meals));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(_meals));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MealsStateImplCopyWith<_$MealsStateImpl> get copyWith =>
      __$$MealsStateImplCopyWithImpl<_$MealsStateImpl>(this, _$identity);
}

abstract class _MealsState extends MealsState {
  const factory _MealsState({final List<Meal> meals}) = _$MealsStateImpl;
  const _MealsState._() : super._();

  @override
  List<Meal> get meals;
  @override
  @JsonKey(ignore: true)
  _$$MealsStateImplCopyWith<_$MealsStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
