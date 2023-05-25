import 'package:flutter/material.dart';

import '../../../constants/colors.dart';

class MElevatedButtonTheme {
  MElevatedButtonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: mSecondaryColor,
        side: BorderSide(color: mSecondaryColor),
        padding: EdgeInsets.symmetric(vertical: 15.0)),
  );

  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
        shape: RoundedRectangleBorder(),
        foregroundColor: mSecondaryColor,
        side: BorderSide(color: mWhiteColor),
        padding: EdgeInsets.symmetric(vertical: 15.0)),
  );
}
