// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../../constants/app/app_constants.dart';
import 'app_theme.dart';
import 'light/light_theme_interface.dart';

class AppThemeLight extends AppTheme with ILightTheme {
  static AppThemeLight? _instance;
  static AppThemeLight get instance {
    return _instance ??= AppThemeLight._init();
  }

  AppThemeLight._init();

  @override
  ThemeData get theme => ThemeData(colorScheme: _appColorScheme, textTheme: textTheme);

  InputDecorationTheme inputDecorationTheme() {
    return const InputDecorationTheme(
      labelStyle: TextStyle(color: Colors.black, fontWeight: FontWeight.w500),
      hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w500),
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: Colors.black, width: 2),
      ),
    );
  }

  TabBarTheme get tabBarTheme {
    return const TabBarTheme(
      labelColor: Color(0xff707070),
      unselectedLabelColor: Color(0xffA1B0D1),
    );
  }

  TextTheme get textTheme {
    return ThemeData.light()
        .textTheme
        .copyWith(
            headline1: textThemeLight!.headline1,
            headline2: textThemeLight!.headline2,
            headline3: textThemeLight!.headline3,
            headline4: textThemeLight!.headline4,
            bodyText1: textThemeLight!.bodyText,
            bodyText2: textThemeLight!.bodyText2,
            overline: textThemeLight!.headline3)
        .apply(bodyColor: colorSchemeLight.colorText, fontFamily: ApplicationConstants.FONT_FAMILY_BOLD);
  }

  ColorScheme get _appColorScheme {
    return ColorScheme(
      primary: colorSchemeLight.colorPrimary,
      primaryVariant: colorSchemeLight.colorText,
      secondary: colorSchemeLight.colorGray,
      secondaryVariant: colorSchemeLight.colorGreyVariant,
      surface: colorSchemeLight.iceCreamBackgroundVariant, //unused
      onPrimary: colorSchemeLight.ratingYellow,
      onSecondary: Colors.transparent, //unused
      onSurface: colorSchemeLight.iceCreamBackground,
      onBackground: colorSchemeLight.backgroundColor,
      onError: Colors.transparent, //unused
      background: Colors.transparent, //unused
      error: colorSchemeLight.strawberryColor,
      brightness: Brightness.light,
    );
  }
}
