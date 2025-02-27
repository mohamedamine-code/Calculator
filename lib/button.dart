// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  final String textButton;
  final textColor;
  final Color ColorButton;
  final path;
  final butttonPrssed;

  Button(
      {this.path,
      required this.ColorButton,
      required this.textButton,
      required this.textColor,
      this.butttonPrssed
      });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: butttonPrssed,
      child: Container(
        decoration: BoxDecoration(
          color: ColorButton,
          borderRadius: BorderRadius.circular(25),
        ),
        child: Center(
          child: Text(
            textButton,
            style: TextStyle(fontSize: 25, color: textColor),
          ),
        ),
      ),
    );
  }
}
