import 'package:bloc/bloc.dart';
import 'package:coffee_shop/models/coffee_model.dart';
import 'package:equatable/equatable.dart';

part 'coffee_event.dart';
part 'coffee_state.dart';

class CoffeeBloc extends Bloc<CoffeeEvent, CoffeeState> {
  CoffeeBloc() : super(const CoffeeInitial(list: [], initial: [], index: 1)) {
    on<GetInitial>(_getInitial);
    on<GetTradicional>(_getTradicional);
    on<GetDoces>(_getDoces);
    on<GetEspeciais>(_getEspeciais);
  }

  void _getInitial(GetInitial event, Emitter emit) {
    emit(CoffeeLoading(list: state.list, initial: state.initial, index: 1));
    emit(CoffeeTradicionalSuccess(list: state.list, initial: [tradicionais.first, doce.first, especial.first], index: 1));
  }

  void _getTradicional(GetTradicional event, Emitter emit) {
    emit(CoffeeLoading(list: state.list, initial: state.initial, index: 1));
    final list = tradicionais;
    emit(CoffeeTradicionalSuccess(list: list, initial: state.initial, index: 1));
  }

  void _getDoces(GetDoces event, Emitter emit) {
    emit(CoffeeLoading(list: state.list, initial: state.initial, index: 2));
    final list = doce;
    emit(CoffeeTradicionalSuccess(list: list, initial: state.initial, index: 2));
  }

  void _getEspeciais(GetEspeciais event, Emitter emit) {
    emit(CoffeeLoading(list: state.list, initial: state.initial, index: 3));
    final list = especial;
    emit(CoffeeTradicionalSuccess(list: list, initial: state.initial, index: 3));
  }
}
