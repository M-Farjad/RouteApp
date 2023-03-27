import 'package:flutter/material.dart';

import './app_color.dart';

//mixin is used to inherit multiple classes in dart
mixin SubThemeData {
  TextTheme getTextThemes() {
    return const TextTheme(
      bodyLarge: TextStyle(
        fontWeight: FontWeight.w400,
      ),
      bodyMedium: TextStyle(
        fontWeight: FontWeight.w400,
      ),
    );
  }

  IconButtonThemeData getIconButtonTheme() {
    return IconButtonThemeData(
        style: IconButton.styleFrom(
      foregroundColor: iconColor,
      hoverColor: iconHoverColor,
    ));
  }

  InputDecorationTheme getInputDecorationLightTheme() {
    return const InputDecorationTheme(
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black26,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: Colors.black38),
      ),
    );
  }

  InputDecorationTheme getInputDecorationDarkTheme() {
    return const InputDecorationTheme(
      filled: true,
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.transparent,
        ),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: Colors.transparent,
        ),
      ),
    );
  }
}
