import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/constants/colors.dart';

class MTextFormFeildTheme {
  MTextFormFeildTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      prefixIconColor: mSecondaryColor,
      floatingLabelStyle: TextStyle(color: mSecondaryColor),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(width: 2.0, color: mSecondaryColor),
      ));

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(100)),
      prefixIconColor: mPrimaryColor,
      floatingLabelStyle: TextStyle(color: mPrimaryColor),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(100),
        borderSide: BorderSide(width: 2.0, color: mPrimaryColor),
      ));
}
