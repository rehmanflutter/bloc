import 'package:bloc/bloc.dart';
import 'package:block_count/bloc/sigup_bloc/sigup_event.dart';
import 'package:block_count/bloc/sigup_bloc/sigup_status.dart';

class SigupBlocs extends Bloc<SigupEvent, SigupStatus> {
  SigupBlocs() : super(SigupStatus()) {
    on<passwordHide>(_password);
    on<PrivacyCheck>(_privace);
  }

  void _password(passwordHide event, Emitter<SigupStatus> emit) {
    emit(state.copyWith(password: !state.password));
  }

  void _privace(PrivacyCheck event, Emitter<SigupStatus> emit) {
    emit(state.copyWith(privacy: !state.privacy));
  }
}
