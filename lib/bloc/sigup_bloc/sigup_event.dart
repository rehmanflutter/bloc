import 'package:equatable/equatable.dart';

abstract class SigupEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class passwordHide extends SigupEvent {}

class PrivacyCheck extends SigupEvent {}
