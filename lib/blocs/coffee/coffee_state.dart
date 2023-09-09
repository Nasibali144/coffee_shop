part of 'coffee_bloc.dart';

abstract class CoffeeState extends Equatable {
  final List<CoffeeModel> list;
  final List<CoffeeModel> initial;
  final int index;

  const CoffeeState({required this.list, required this.initial, required this.index});

  @override
  List<Object> get props => [list, initial];
}

class CoffeeInitial extends CoffeeState {
  const CoffeeInitial({required super.list, required super.initial, required super.index});
}

class CoffeeLoading extends CoffeeState {
  const CoffeeLoading({required super.list, required super.initial, required super.index});
}

class CoffeeFailure extends CoffeeState {
  const CoffeeFailure({required super.list, required super.initial, required super.index});
}

class CoffeeTradicionalSuccess extends CoffeeState {
  const CoffeeTradicionalSuccess({required super.list, required super.initial, required super.index});
}

class CoffeeDocesSuccess extends CoffeeState {
  const CoffeeDocesSuccess({required super.list, required super.initial, required super.index});
}

class CoffeeEspeciaisSuccess extends CoffeeState {
  const CoffeeEspeciaisSuccess({required super.list, required super.initial, required super.index});
}

