import 'package:bloc_statemanagement/bloc/CounterBloc/counter_event.dart';
import 'package:bloc_statemanagement/bloc/CounterBloc/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(0)) {
    on<IncreamentEvent>(_increament);
    on<DecreamentEvent>(_decreament);
  }
  void _increament(IncreamentEvent event, Emitter<CounterState> emit) {
    emit(CounterState(state.counter + 1));
  }

  void _decreament(DecreamentEvent event, Emitter<CounterState> emit) {
    emit(CounterState(state.counter -1));
  }
}
