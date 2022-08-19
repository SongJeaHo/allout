import 'package:flutter/material.dart';

class AlloutColors {
  static const int _primaryColorValue = 0xFF786CDE;
  static const primaryColor = Color(_primaryColorValue);

  static const MaterialColor primaryMaterialColor =
      MaterialColor(_primaryColorValue, <int, Color>{
    50: Color(_primaryColorValue),
    100: Color(_primaryColorValue),
    200: Color(_primaryColorValue),
    300: Color(_primaryColorValue),
    400: Color(_primaryColorValue),
    500: Color(_primaryColorValue),
    600: Color(_primaryColorValue),
    700: Color(_primaryColorValue),
    800: Color(_primaryColorValue),
    900: Color(_primaryColorValue),
  });

  static const Color background = Color(0xFFF5F5F5);
  static const Color backgroundGrey = Color(0xFFEDEDED);

  static const Color alloutGrey = Color(0xFF999999);
}
