import 'package:flutter/material.dart';

class ColorSchemeLight {
  static ColorSchemeLight? _instance;
  static ColorSchemeLight get instance {
    _instance ??= _instance = ColorSchemeLight._init();
    return _instance!;
  }

  ColorSchemeLight._init();

  final Color blue = const Color(0xff5673B5);
  final Color blackVariant = const Color(0xFF2D3036);
  final Color red = const Color(0xffE10813);
  final Color redVariant = const Color(0xFFFD4350);
  final Color yellow = const Color(0xffFEBB00);
  final Color lightGrey = const Color(0xffF3F3F3);
  final Color darktGrey = const Color(0xffD0D0D8);
  final Color grey = const Color(0xffBBBBBB);
  final Color deepDarkGrey = const Color(0xff2B2727);
  final Color lightRed = const Color(0xffFD4350);
  final Color mildGrey = const Color(0xff919090);
  final Color greyBlue = const Color(0xffA1B0D1);
  final Color green = const Color(0xff00D859);
  final Color paleRed = const Color(0xffF3B6B9);
  final Color greyVariant = const Color(0xff707070);
  final Color textGrey = const Color(0xff939393);
  final Color white = const Color(0xffF3F3F3);
  final Color brightLight = const Color(0xffffffff);
  final Color filmRed = const Color(0xfffa424f);
}
