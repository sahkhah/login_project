import 'package:flutter/material.dart';
import 'package:login_project/src/utils/theme/widget_theme/elevatedButton_theme.dart';
import 'package:login_project/src/utils/theme/widget_theme/outlinedButton_theme.dart';
import 'package:login_project/src/utils/theme/widget_theme/text_field_theme.dart';
import 'package:login_project/src/utils/theme/widget_theme/text_theme.dart';

class AppTheme {
  //making the constructor private in dart
  AppTheme._();
  
  static ThemeData lightTheme = ThemeData(
      brightness: Brightness.light,
      /* primarySwatch: const MaterialColor(0xFFFFE200, <int, Color>{
      50: Color(0x1AFFE200),
      100: Color(0x33FFE200),
      200: Color(0x40FFE200),
      300: Color(0x66FFE200),
      400: Color(0x80FFE200),
      500: Color(0xFFFFE200),
      600: Color(0x99FFE200),
      700: Color(0xB3FFE200),
      800: Color(0xCCFFE200),
      900: Color(0xECFFE200),
    }), */
      textTheme: AppTextTheme.lightTextTheme,
      outlinedButtonTheme: OutlinedBottonTheme.lightOutlinedButtonTheme,
      elevatedButtonTheme: ElevatedBottonTheme.lightElevatedButtonTheme,
      inputDecorationTheme: TextFormFieldTheme.lightInputDecorationTheme,
      );

  static ThemeData darkTheme = ThemeData(
      brightness: Brightness.dark,
      textTheme: AppTextTheme.dartTextTheme,
      outlinedButtonTheme: OutlinedBottonTheme.darkOutlinedButtonTheme,
      elevatedButtonTheme: ElevatedBottonTheme.darkElevatedButtonTheme,
      inputDecorationTheme: TextFormFieldTheme.darkInputDecorationTheme,
      /* primarySwatch: const MaterialColor(0xFFFFE200, <int, Color>{
      50: Color(0x1AFFE200),
      100: Color(0x33FFE200),
      200: Color(0x40FFE200),
      300: Color(0x66FFE200),
      400: Color(0x80FFE200),
      500: Color(0xFFFFE200),
      600: Color(0x99FFE200),
      700: Color(0xB3FFE200),
      800: Color(0xCCFFE200),
      900: Color(0xECFFE200),
    }), */
      );
}
