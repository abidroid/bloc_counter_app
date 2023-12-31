import 'package:equatable/equatable.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {
  CounterBloc() : super(const CounterInitial(0)) {
    on<CounterEvent>((event, emit) {
      if (event is IncrementCounterEvent) {
        emit(CounterInitial(state.count + 1));
      }

      if (event is DecrementCounterEvent) {
        emit(CounterInitial(state.count - 1));
      }
    });
  }
}
