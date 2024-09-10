part of 'counter_bloc.dart';

class CounterState extends Equatable {
 

  final int counter;
  final int transationCount;

  const CounterState({this.counter = 10, this.transationCount = 0});

  CounterState copyWith({
    int? counter,
    int? transationCount,
  }) => CounterState(
    counter: counter ?? this.counter,
    transationCount: transationCount ?? this.transationCount
  );
  
  @override
  List<Object> get props => [
    counter,
    transationCount
  ];
}
