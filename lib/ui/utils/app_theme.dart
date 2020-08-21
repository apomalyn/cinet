// FLUTTER / DART / THIRD-PARTIES
import 'package:flutter/material.dart';

/// Contains all the colors and theme of the ETS, App|ETS and specific to the app
class AppTheme {
  AppTheme._();

  // Brand colors
  static const Color orange = Color(0xffda6334);
  static const Color lightBrown = Color(0xff9f5031);
  static const Color brown = Color(0xff653d2e);
  static const Color darkBrown = Color(0xff2b2b2b);
  static const Color eggWhite = Color(0xfffcfcfc);


  // Primary
  static const Color primary = orange;

  // Primary dark
  static const Color primaryDark = Colors.black;

  // Accent
  static const Color accent = orange;

  /// Light theme
  static final ThemeData lightTheme = ThemeData.light().copyWith(
      primaryColor: primary,
      accentColor: accent
  );

  /// Dark theme
  static final ThemeData darkTheme = ThemeData.dark().copyWith(
      primaryColor: primaryDark,
      accentColor: accent
  );
}