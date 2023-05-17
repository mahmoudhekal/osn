// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';

import '../../consts/color.dart';

class CustomTextField extends StatelessWidget {
  IconData? icon;
  IconData? iconsuffex;
  String? tex;
  TextInputType? keybord;
  bool? password;
  final TextEditingController? textController;
  ValueChanged<String>? onchange;
  FormFieldValidator? validator;
  FormFieldSetter? onSaved;

  CustomTextField(
      {this.textController,
      super.key,
      this.icon,
      this.iconsuffex,
      this.tex,
      this.keybord,
      this.password,
      this.onchange,
      this.validator,
      this.onSaved});

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: onSaved,
      validator: validator,
      controller: textController,
      textInputAction: TextInputAction.done,
      decoration: InputDecoration(
        isDense: true,
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: blackAppColor),
          borderRadius: BorderRadius.circular(50),
        ),
        focusColor: whiteAppColor,
        fillColor: whiteAppColor,
        border: OutlineInputBorder(
          borderSide: const BorderSide(
              width: 1, color: redAppColor, style: BorderStyle.solid),
          borderRadius: BorderRadius.circular(30),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(color: redAppColor),
          borderRadius: BorderRadius.circular(50),
        ),
        suffixIcon: Icon(
          iconsuffex,
          size: 24,
          color: Theme.of(context).iconTheme.color,
        ),
        prefixIcon: Icon(
          icon,
          size: 24,
          color: redAppColor,
        ),
        hintText: tex,
        hintStyle: TextStyle(color: whiteAppColor, fontSize: 12),
        labelStyle: TextStyle(color: whiteAppColor),
        floatingLabelStyle: TextStyle(color: whiteAppColor),
      ),
      obscureText: password ?? false,
      keyboardType: keybord,
      onChanged: onchange,
    );
  }
}
