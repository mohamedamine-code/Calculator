import 'dart:ffi';

import 'package:flutter/material.dart';

class Imgbutton extends StatelessWidget {
  final Color ColorButton;
  final String textButton;
  final double widthb;
  final double heidthb;
  Imgbutton(
      {required this.ColorButton,
      required this.textButton, required this.widthb, required this.heidthb});
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorButton,
        borderRadius: BorderRadius.circular(25),
      ),
      child: Center(
        child: Image.asset(
          color: Colors.black,
          textButton,
          width: widthb,
          height: heidthb,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
