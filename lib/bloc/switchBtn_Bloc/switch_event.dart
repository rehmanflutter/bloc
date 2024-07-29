import 'package:equatable/equatable.dart';

abstract class SwitchEvent extends Equatable {
  SwitchEvent();
  @override
  List<Object> get props => [];
}

class SwitchDisableEnable extends SwitchEvent {}

class SilidersEvents extends SwitchEvent {
  double value;
  SilidersEvents({required this.value});
  @override
  List<Object> get props => [value];
}
