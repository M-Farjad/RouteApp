import 'package:flutter/material.dart';

import './sub_theme_data_mixin.dart';
import './app_color.dart';

class LightTheme with SubThemeData {
  // with is used instead of extends for mixin class
  ThemeData buildLigtTheme() {
    final ThemeData systemLightTheme = ThemeData.light();
    return systemLightTheme.copyWith(
      appBarTheme: const AppBarTheme(
        backgroundColor: primaryColorDark,
        foregroundColor: iconColor,
      ),
      primaryColor: primaryColorLight,
      scaffoldBackgroundColor: bgColorLight,
      cardColor: cardColorLight,
      drawerTheme: const DrawerThemeData(backgroundColor: drawerColor),
      // iconTheme: getIconTheme(),
      inputDecorationTheme: getInputDecorationLightTheme(),
      iconButtonTheme: getIconButtonTheme(),
      textTheme: getTextThemes()
          .apply(bodyColor: textColorLight, displayColor: textColorLight),
    );
  }
}
