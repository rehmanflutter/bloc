import 'package:equatable/equatable.dart';

class SigupStatus extends Equatable {
  bool password;
  bool privacy;
  SigupStatus({this.password = false, this.privacy = false});

  SigupStatus copyWith({bool? password = false, bool? privacy}) {
    return SigupStatus(
        password: password ?? this.password, privacy: privacy ?? this.privacy);
  }

  @override
  List<Object> get props => [password, privacy];
}
