import 'package:bloc/bloc.dart';
import 'package:state_management_flutter/counter_bloc/bloc/counter_event.dart';
import 'package:state_management_flutter/counter_bloc/bloc/counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(CounterState(counterValue: 0)) {
     on<Increment>((event, emit) =>
        emit(CounterState(counterValue: state.counterValue + 1)));
    on<Decrement>((event, emit) =>
        emit(CounterState(counterValue: state.counterValue - 1)));
  }
}
