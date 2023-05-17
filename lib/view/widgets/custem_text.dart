import 'package:flutter/material.dart';

import '../../consts/color.dart';

class CustomText extends StatelessWidget {
  String? text;
  CustomText({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text!,
      style: const TextStyle(
          color: whiteAppColor, fontWeight: FontWeight.bold, fontSize: 11),
    );
  }
}
