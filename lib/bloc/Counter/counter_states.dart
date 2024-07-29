import 'package:equatable/equatable.dart';

class CounterStates extends Equatable {
  int count;
  CounterStates({this.count = 0});

  CounterStates copyWith({int? counter}) {
    return CounterStates(count: counter ?? this.count);
  }

  @override
  // TODO: implement props
  List<Object?> get props => [count];
}
