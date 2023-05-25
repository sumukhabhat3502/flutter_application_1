import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class MOutlinedButtonTheme {
  MOutlinedButtonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        backgroundColor: mSecondaryColor,
        side: BorderSide(color: mSecondaryColor),
        padding: EdgeInsets.symmetric(vertical: 15.0)),
  );

  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        backgroundColor: mWhiteColor,
        side: BorderSide(color: mWhiteColor),
        padding: EdgeInsets.symmetric(vertical: 15.0)),
  );
}
