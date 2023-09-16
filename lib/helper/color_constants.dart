import 'package:flutter/material.dart';

class FigmaColors {
  const FigmaColors();

  static const Color primaryColor = Color(0xff17AF4E);
  static const Color youtubeColor = Color(0xffE21F27);
  static const Color fbColor = Color(0xff0F5EA2);
  static const Color topnewsColor = Color(0xff812082);
}

class FigmaTextStyles {
  const FigmaTextStyles();
  TextStyle get smallbaseRegular => const TextStyle(
      fontSize: 12,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      fontFamily: 'DM Sans',
      color: Colors.black);

  TextStyle get baseRegular => const TextStyle(
      fontSize: 14,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w400,
      letterSpacing: 0,
      fontFamily: 'DM Sans',
      color: Colors.black);

  TextStyle get baseBold => const TextStyle(
      fontSize: 14,
      decoration: TextDecoration.none,
      fontStyle: FontStyle.normal,
      fontWeight: FontWeight.w700,
      letterSpacing: 0,
      fontFamily: 'DM Sans',
      color: Colors.black);
}
