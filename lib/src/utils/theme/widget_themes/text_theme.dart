import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/constants/colors.dart';
import 'package:google_fonts/google_fonts.dart';

class MTextTheme {
  MTextTheme._();
  static TextTheme lightTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: mDarkColor),
    headline2: GoogleFonts.montserrat(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: mDarkColor),
    headline3: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: mDarkColor),
    headline4: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: mDarkColor),
    headline6: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.w300, color: mDarkColor),
    bodyText1: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: mDarkColor),
    bodyText2: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: mDarkColor),
  );
  static TextTheme darkTextTheme = TextTheme(
    headline1: GoogleFonts.montserrat(
        fontSize: 28.0, fontWeight: FontWeight.bold, color: mWhiteColor),
    headline2: GoogleFonts.montserrat(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: mWhiteColor),
    headline3: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.w700, color: mWhiteColor),
    headline4: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.w600, color: mWhiteColor),
    headline6: GoogleFonts.poppins(
        fontSize: 24.0, fontWeight: FontWeight.w500, color: mWhiteColor),
    bodyText1: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: mWhiteColor),
    bodyText2: GoogleFonts.poppins(
        fontSize: 14.0, fontWeight: FontWeight.normal, color: mWhiteColor),
  );
}
