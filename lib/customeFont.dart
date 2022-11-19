import 'dart:ui';

// ignore: implementation_imports
import 'package:flutter/material.dart';
import 'package:flutter/src/painting/text_style.dart';
import 'package:google_fonts/google_fonts.dart';

TextStyle customGoogleFont(
    {required double fontSize,
    required FontWeight fontWeight,
    Color color = const Color(0xFF06070D)}) {
  return GoogleFonts.poppins(
      textStyle: TextStyle(
    fontSize: fontSize,
    fontWeight: fontWeight,
    fontFamily: 'Poppins',
    color: color,
  ));
}
