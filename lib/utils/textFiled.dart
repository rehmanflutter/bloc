import 'package:flutter/material.dart';

class Textfiledcustam extends StatelessWidget {
  // final formKey = GlobalKey<FormState>();

  final String? hinttext;
  final String? labeltext;
  final Widget? starticon;
  final Widget? lasticon;
  final bool? obscur;
  final VoidCallback? fun;
  final bool? focus;
  final double? height;
  final double? width;

  final TextInputType? keyboardType;
  final TextEditingController? controller;

  Textfiledcustam(
      {this.hinttext,
      this.controller,
      this.labeltext,
      this.lasticon,
      this.obscur = false,
      this.starticon,
      this.keyboardType,
      this.fun,
      this.focus = false,
      this.height,
      this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          border: Border.all(color: Color(0xffE2E8F0))),
      child: Center(
        child: Padding(
          padding: const EdgeInsets.only(top: 4),
          child: TextField(
            autofocus: focus!,
            // key: formKey,
            obscureText: obscur!,
            keyboardType: keyboardType,
            style: TextStyle(
              fontSize: 14,
            ),
            controller: controller,
            cursorColor: Colors.blue,
            decoration: InputDecoration(
              hintText: hinttext,
              prefixText: '    ',
              hintStyle: TextStyle(color: Colors.grey.shade400),
              labelText: labeltext,
              prefixIcon: starticon,
              suffixIcon: lasticon,
              border: InputBorder.none,
              // prefixText: '    ',
            ),
          ),
        ),
      ),
    );
  }
}
