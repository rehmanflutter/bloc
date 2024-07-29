import 'package:equatable/equatable.dart';

class Switchstatus extends Equatable {
  //  Ya values  jo hum use kara ga
  bool ischeck;
  double sildervalue;
  Switchstatus({this.ischeck = false, this.sildervalue = 0});

//  Copy with values ko changes karna kaliya easy hota ha
  Switchstatus copyWith({bool? ischeck, double? sildervalue}) {
    return Switchstatus(
      ischeck: ischeck ?? this.ischeck,
      sildervalue: sildervalue ?? this.sildervalue,
    );
  }

  @override
  // TODO: implement props

  //  aur ya   hum  Equatable  use kar raha ha is liya  is ma value pass kani ho ge  jis sa ya change ho ge
  List<Object?> get props => [ischeck, sildervalue];
}
