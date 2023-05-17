import 'package:flutter/material.dart';
import 'package:osn/consts/color.dart';

class DiscripText extends StatelessWidget {
  String? text;
  DiscripText({
    super.key,
    this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: const TextStyle(color: shadowAppColor, fontSize: 11),
      textDirection: TextDirection.rtl,
      textAlign: TextAlign.right,
    );
  }
}
