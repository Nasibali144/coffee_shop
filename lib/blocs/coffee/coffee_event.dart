part of 'coffee_bloc.dart';

abstract class CoffeeEvent extends Equatable {
  const CoffeeEvent();

  @override
  List<Object?> get props => [];
}

class GetInitial extends CoffeeEvent {}

class GetTradicional extends CoffeeEvent {}

class GetDoces extends CoffeeEvent {}

class GetEspeciais extends CoffeeEvent {}