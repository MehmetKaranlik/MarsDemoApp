// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

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
  ThemeData get theme => ThemeData(
        dialogBackgroundColor: const Color(0xff000000),
        buttonColor: colorSchemeLight.greyVariant,
        textSelectionTheme: const TextSelectionThemeData(
          cursorColor: Colors.black,
        ),

        toggleableActiveColor: const Color(0xff00d859),
        primaryColor: colorSchemeLight.blue,
        fontFamily: ApplicationConstants.FONT_FAMILY_MEDIUM,
        colorScheme: _appColorScheme,
        textTheme: textTheme,

        shadowColor: Colors.grey,
        textSelectionHandleColor: colorSchemeLight.filmRed,
        accentColor: const Color(0xffFEC92E),
        // checkboxTheme: CheckboxThemeData(
        //     fillColor: MaterialStateProperty.all(const Color(0xffFEC92E))),
        appBarTheme: ThemeData.light().appBarTheme.copyWith(
            color: Colors.black,
            centerTitle: true,
            toolbarHeight: 5.h,
            iconTheme: IconThemeData(color: Colors.white, size: 21.sp)),
        inputDecorationTheme: inputDecorationTheme(),
        scaffoldBackgroundColor: Colors.black,
        floatingActionButtonTheme: ThemeData.light().floatingActionButtonTheme.copyWith(
              backgroundColor: colorSchemeLight.blue,
            ),
        buttonTheme: ThemeData.light().buttonTheme.copyWith(
              colorScheme: const ColorScheme.light(
                onError: Color(0xffFF2D55),
              ),
            ),
        tabBarTheme: tabBarTheme,
        selectedRowColor: colorSchemeLight.brightLight,
        disabledColor: colorSchemeLight.white,
        highlightColor: colorSchemeLight.lightRed,
        dividerColor: colorSchemeLight.mildGrey,
        canvasColor: colorSchemeLight.lightGrey,
        hintColor: colorSchemeLight.greyBlue,
        textSelectionColor: colorSchemeLight.green,
        cardColor: colorSchemeLight.paleRed,
        cursorColor: colorSchemeLight.textGrey,
      );

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
            overline: textThemeLight!.headline3)
        .apply(bodyColor: colorSchemeLight.blue, fontFamily: ApplicationConstants.FONT_FAMILY_BOLD);
  }

  ColorScheme get _appColorScheme {
    return ColorScheme(
      primary: colorSchemeLight.blue,
      primaryVariant: Colors.black,
      secondary: colorSchemeLight.red,
      secondaryVariant: colorSchemeLight.redVariant,
      surface: colorSchemeLight.lightGrey,
      onPrimary: colorSchemeLight.greyVariant,
      onSecondary: colorSchemeLight.yellow,
      onSurface: const Color(0xffFFFFFF),
      onBackground: colorSchemeLight.deepDarkGrey,

      onError: colorSchemeLight.red,
      background: colorSchemeLight.blackVariant,
      error: colorSchemeLight.red, //unused
      brightness: Brightness.light,
    );
  }
}
