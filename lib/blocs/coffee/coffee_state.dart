part of 'coffee_bloc.dart';

abstract class CoffeeState extends Equatable {
  final List<CoffeeModel> list;
  final List<CoffeeModel> initial;

  const CoffeeState({required this.list, required this.initial});

  @override
  List<Object> get props => [list, initial];
}

class CoffeeInitial extends CoffeeState {
  const CoffeeInitial({required super.list, required super.initial});
}

class CoffeeLoading extends CoffeeState {
  const CoffeeLoading({required super.list, required super.initial});
}

class CoffeeFailure extends CoffeeState {
  const CoffeeFailure({required super.list, required super.initial});
}

class CoffeeTradicionalSuccess extends CoffeeState {
  const CoffeeTradicionalSuccess({required super.list, required super.initial});
}

class CoffeeDocesSuccess extends CoffeeState {
  const CoffeeDocesSuccess({required super.list, required super.initial});
}

class CoffeeEspeciaisSuccess extends CoffeeState {
  const CoffeeEspeciaisSuccess({required super.list, required super.initial});
}

