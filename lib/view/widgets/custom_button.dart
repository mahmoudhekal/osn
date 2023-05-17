import 'package:flutter/material.dart';

import '../../consts/color.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  String? text;
  VoidCallback? onpress;
  double? height, width;
  double? fontSize;
  FontWeight fontWeight;
  Color? color, textColor;
  CustomButton({
    super.key,
    this.text,
    this.onpress,
    this.fontSize = 16,
    this.height,
    this.width,
    this.color,
    this.fontWeight = FontWeight.w700,
    this.textColor = whiteAppColor,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onpress,
      child: Container(
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(25),
          color: color,
        ),
        child: Center(
            child: Text(
          text!,
          style: TextStyle(
              fontSize: fontSize, color: textColor, fontWeight: fontWeight),
        )),
      ),
    );
  }
}
