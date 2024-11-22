// this all the theme will apply to the main.dart

import 'package:blog_app/core/themes/app_palette.dart';
import 'package:flutter/material.dart';

class AppTheme {
  // reuseable function
  static _border([Color color = AppPalette.borderColor]) => OutlineInputBorder(
      borderRadius: BorderRadius.circular(27),
      borderSide: BorderSide(color: color, width: 3));

  static final darkThemeMode = ThemeData.dark().copyWith(
      scaffoldBackgroundColor: AppPalette.backgroundColor,
      inputDecorationTheme: InputDecorationTheme(
          contentPadding: const EdgeInsets.all(27),
          enabledBorder: _border(),
          focusedBorder: _border(AppPalette.gradient2)));
}
