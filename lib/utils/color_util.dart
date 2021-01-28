
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

/// APP内颜色
extension ColorX on Colors {
  static const Color primary = const Color(0xFFF57536);
  static const Color white = Colors.white;
  static const Color whiteGrey = const Color(0xFFF5F5F5);
  static const Color grey = Color(0xFFB7B7B7);
  static const Color amber = Colors.amber;
  static const Color transparent = Colors.transparent;
  static const Color c_444444 = Color(0xFF444444);
  static const Color c_C5C5C5 = Color(0xFFC5C5C5);
  static const Color c_CACACA = Color(0xFFCACACA);
  static const Color c_F9C6A0 = Color(0xFFF9C6A0);
  static const Color c_FBCCAB = Color(0xFFFBCCAB);
  static const Color c_F57536 = Color(0xFFF57536);
  static const Color c_FC6A3D = Color(0xFFFC6A3D);
  static const Color c_F79B6E = Color(0xFFF79B6E);
  static const Color c_FCDEBC = Color(0xFFFCDEBC);
  static const Color c_8F6E56 = Color(0xFF8F6E56);
  static const Color c_6A6A6A = Color(0xFF6A6A6A);
  static const Color c_999999 = Color(0xFF999999);
  static const Color c_E5E5E5 = Color(0xFFE5E5E5);
  static const Color c_F5F5F5 = Color(0xFFF5F5F5);

  static const MaterialColor shadesOfGray = const MaterialColor(
    0xFFF8F9FA,
    <int, Color>{
      50: Color(0xFFF8F9FA),
      100: Color(0xFFE9ECEF),
      200: Color(0xFFDEE2E6),
      300: Color(0xFFCED4DA),
      400: Color(0xFFADB5BD),
      500: Color(0xFF6C757C),
      600: Color(0xFF495057),
      700: Color(0xFF495057),
      800: Color(0xFF212529),
      900: Color(0xFF162024)
    },
  );
}