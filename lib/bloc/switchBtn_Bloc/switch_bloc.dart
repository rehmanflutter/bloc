import 'package:block_count/bloc/switchBtn_Bloc/switch_event.dart';
import 'package:block_count/bloc/switchBtn_Bloc/switch_status.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SwitchBloc extends Bloc<SwitchEvent, Switchstatus> {
  SwitchBloc() : super(Switchstatus()) {
    on<SwitchDisableEnable>(_switchDisableEnable);
    on<SilidersEvents>(_siliderss);
  }

  void _switchDisableEnable(
      SwitchDisableEnable event, Emitter<Switchstatus> emit) {
    emit(state.copyWith(ischeck: !state.ischeck));
  }

  void _siliderss(SilidersEvents event, Emitter<Switchstatus> emit) {
    emit(state.copyWith(sildervalue: event.value));
  }
}
