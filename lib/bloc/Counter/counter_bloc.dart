import 'package:bloc/bloc.dart';
import 'package:block_count/bloc/Counter/counter_event.dart';
import 'package:block_count/bloc/Counter/counter_states.dart';

class CounterBloc extends Bloc<CounterEvent, CounterStates> {
  CounterBloc() : super(CounterStates()) {
    on<Increment>(_increment);
    on<decrement>(_decrement);
  }

  void _increment(Increment event, Emitter<CounterStates> emit) {
    emit(state.copyWith(counter: state.count + 1));
  }

  void _decrement(decrement event, Emitter<CounterStates> emit) {
    emit(state.copyWith(counter: state.count - 1));
  }
}
