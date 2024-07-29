import 'package:flutter/material.dart';

class Textcustam extends StatelessWidget {
  final String text;
  final Color? col;
  final FontWeight? weight;
  final double? size;
  final TextAlign? align;
  final bool? underline;
  Textcustam(
      {required this.text,
      this.weight,
      this.col,
      this.size,
      this.align,
      this.underline = false});
  @override
  Widget build(BuildContext context) {
    return Text(
      textAlign: align,
      '$text',
      style: TextStyle(
        color: col,
        fontSize: size,
        fontWeight: weight,
        decoration: underline == true ? TextDecoration.underline : null,
        decorationColor: col,
        decorationThickness: 1.0,
      ),
    );
  }
}
