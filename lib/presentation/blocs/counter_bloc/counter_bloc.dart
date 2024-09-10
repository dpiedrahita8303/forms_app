import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';
part 'counter_state.dart';

class CounterBloc extends Bloc<CounterEvent, CounterState> {

  CounterBloc() : super(const CounterState()) {
    on<CounterIncreased>((event, emit) {
      _onCounterIncreased(event, emit);
    });

    on<CounterReset>(_onCounterReset);
  }

  void _onCounterIncreased(CounterIncreased event, Emitter<CounterState> emit){
    emit(state.copyWith(
      counter: state.counter + event.value,
      transationCount: state.transationCount + 1,
    ));
  }

  void _onCounterReset(CounterReset event, Emitter<CounterState> emit){
    print('Reset emit');
    emit(state.copyWith(
      counter: event.resetValue,
    ));
  }
  
}
