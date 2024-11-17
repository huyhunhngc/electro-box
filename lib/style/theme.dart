import 'package:circuit_electricial_box/style/theme_extension/theme_colors.dart';
import 'package:circuit_electricial_box/style/theme_extension/theme_text_styles.dart';
import 'package:flutter/material.dart';

ThemeData createLightTheme(ColorScheme? colorScheme) {
  return colorScheme != null
      ? ThemeData(colorScheme: colorScheme, useMaterial3: true)
      : ThemeData(
          brightness: Brightness.light,
          scaffoldBackgroundColor: AppThemeColors.darkColor,
          extensions: const [
            ThemeColors.light,
            ThemeTextStyles.light,
          ],
          dialogTheme:
              const DialogTheme(backgroundColor: AppThemeColors.darkColor),
        );
}

ThemeData createDarkTheme(ColorScheme? colorScheme) {
  return colorScheme != null
      ? ThemeData(colorScheme: colorScheme, useMaterial3: true)
      : ThemeData(
          brightness: Brightness.dark,
          scaffoldBackgroundColor: AppThemeColors.darkColor,
          extensions: const [
            ThemeColors.dark,
            ThemeTextStyles.dark,
          ],
          dialogTheme: const DialogTheme(
            backgroundColor: AppThemeColors.darkColor,
          ),
        );
}

class AppThemeColors {
  static const Color contrastColor = Color.fromRGBO(23, 33, 48, 1);
  static const Color darkColor = Color.fromRGBO(23, 23, 23, 1);
  static const Color darkContrastColor = Color.fromRGBO(12, 12, 12, 1);
  static const Color controlColor = Color.fromRGBO(252, 251, 255, 1);
  static const Color textColor = Color.fromRGBO(252, 251, 255, 1);
  static const Color fadedColor = Color.fromRGBO(94, 94, 94, 1);
  static const Color alarmColor = Color.fromRGBO(172, 47, 48, 1);

  const AppThemeColors._();
}
