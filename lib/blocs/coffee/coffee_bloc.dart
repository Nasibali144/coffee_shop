import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:coffee_shop/models/coffee_model.dart';
import 'package:equatable/equatable.dart';

part 'coffee_event.dart';
part 'coffee_state.dart';

class CoffeeBloc extends Bloc<CoffeeEvent, CoffeeState> {
  CoffeeBloc() : super(const CoffeeInitial(list: [], initial: [])) {
    on<GetInitial>(_getInitial);
    on<GetTradicional>(_getTradicional);
    on<GetDoces>(_getDoces);
    on<GetEspeciais>(_getEspeciais);
  }

  void _getInitial(GetInitial event, Emitter emit) {
    //...
  }

  void _getTradicional(GetTradicional event, Emitter emit) {
    emit(CoffeeLoading(list: state.list, initial: state.initial));
    final list = tradicionais;
    emit(CoffeeTradicionalSuccess(list: list, initial: state.initial));
  }

  void _getDoces(GetDoces event, Emitter emit) {
    emit(CoffeeLoading(list: state.list, initial: state.initial));
    final list = doce;
    emit(CoffeeTradicionalSuccess(list: list, initial: state.initial));
  }

  void _getEspeciais(GetEspeciais event, Emitter emit) {
    emit(CoffeeLoading(list: state.list, initial: state.initial));
    final list = especial;
    emit(CoffeeTradicionalSuccess(list: list, initial: state.initial));
  }
}
