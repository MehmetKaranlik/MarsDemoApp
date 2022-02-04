import 'package:flutter/material.dart';

class ColorSchemeLight {
  static ColorSchemeLight? _instance;
  static ColorSchemeLight get instance {
    _instance ??= _instance = ColorSchemeLight._init();
    return _instance!;
  }

  ColorSchemeLight._init();

  final backgroundColor = Colors.white;
  final colorPrimary = const Color(0xffFA458B);
  final colorText = const Color(0xff2D2F39);
  final colorGray = const Color(0xffBCBCBC);
  final colorGreyVariant = const Color(0xffF3F3F3);
}
