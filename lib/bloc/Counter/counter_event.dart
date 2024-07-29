import 'package:equatable/equatable.dart';

abstract class CounterEvent extends Equatable {
  const CounterEvent();
  @override
  List<Object> get props => [];
}

class Increment extends CounterEvent {}

class decrement extends CounterEvent {}
