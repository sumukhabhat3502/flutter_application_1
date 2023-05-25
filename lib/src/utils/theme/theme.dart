import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/utils/theme/widget_themes/elevatedbutton_theme.dart';
import 'package:flutter_application_1/src/utils/theme/widget_themes/outlined_button_theme.dart';
import 'package:flutter_application_1/src/utils/theme/widget_themes/text_field_theme.dart';
import 'package:flutter_application_1/src/utils/theme/widget_themes/text_theme.dart';

class MAppTheme {
  MAppTheme._(); //To privatize the class
  static ThemeData lightTheme = ThemeData(
    brightness: Brightness.light,
    textTheme: MTextTheme.lightTextTheme,
    // appBarTheme: mAppBarTheme.lightAppBarTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.lightOutlinedButtonTheme,
    elevatedButtonTheme: MElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: MTextFormFeildTheme.lightInputDecorationTheme,
  );

  static ThemeData darkTheme = ThemeData(
    brightness: Brightness.dark,
    textTheme: MTextTheme.darkTextTheme,
    // appBarTheme: mAppBarTheme.darkAppBarTheme,
    outlinedButtonTheme: MOutlinedButtonTheme.darkOutlinedButtonTheme,
    elevatedButtonTheme: MElevatedButtonTheme.darkElevatedButtonTheme,
    inputDecorationTheme: MTextFormFeildTheme.darkInputDecorationTheme,
  );
}
