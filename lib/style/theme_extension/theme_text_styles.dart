import 'package:circuit_electricial_box/style/theme.dart';
import 'package:flutter/material.dart';

class ThemeTextStyles extends ThemeExtension<ThemeTextStyles> {
  static const light = ThemeTextStyles(
    fs28: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w700,
      color: AppThemeColors.textColor,
      decoration: TextDecoration.none,
    ),
    fs24: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w600,
      color: AppThemeColors.textColor,
      decoration: TextDecoration.none,
    ),
    fs18: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w500,
      color: AppThemeColors.textColor,
      decoration: TextDecoration.none,
    ),
    button18: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w600,
      color: AppThemeColors.textColor,
      decoration: TextDecoration.none,
    ),
    bodyText16: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppThemeColors.textColor,
      decoration: TextDecoration.none,
    ),
    caption14: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppThemeColors.textColor,
      decoration: TextDecoration.none,
    ),
  );

  static const dark = ThemeTextStyles(
    fs28: TextStyle(
      fontSize: 28,
      fontWeight: FontWeight.w600,
      color: AppThemeColors.textColor,
      decoration: TextDecoration.none,
    ),
    fs24: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w500,
      color: AppThemeColors.textColor,
      decoration: TextDecoration.none,
    ),
    fs18: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: AppThemeColors.textColor,
      decoration: TextDecoration.none,
    ),
    button18: TextStyle(
      fontSize: 18,
      fontWeight: FontWeight.w400,
      color: AppThemeColors.textColor,
      decoration: TextDecoration.none,
    ),
    bodyText16: TextStyle(
      fontSize: 16,
      fontWeight: FontWeight.w400,
      color: AppThemeColors.textColor,
      decoration: TextDecoration.none,
    ),
    caption14: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w400,
      color: AppThemeColors.textColor,
      decoration: TextDecoration.none,
    ),
  );

  final TextStyle? fs28;
  final TextStyle? fs24;
  final TextStyle? fs18;
  final TextStyle? button18;
  final TextStyle? bodyText16;
  final TextStyle? caption14;

  const ThemeTextStyles({
    required this.fs28,
    required this.fs24,
    required this.fs18,
    required this.button18,
    required this.bodyText16,
    required this.caption14,
  });

  @override
  ThemeExtension<ThemeTextStyles> copyWith({
    TextStyle? fs28,
    TextStyle? fs24,
    TextStyle? fs18,
    TextStyle? button18,
    TextStyle? bodyText16,
    TextStyle? caption14,
  }) {
    return ThemeTextStyles(
      fs28: fs28 ?? this.fs28,
      fs24: fs24 ?? this.fs24,
      fs18: fs18 ?? this.fs18,
      button18: button18 ?? this.button18,
      bodyText16: bodyText16 ?? this.bodyText16,
      caption14: caption14 ?? this.caption14,
    );
  }

  @override
  ThemeExtension<ThemeTextStyles> lerp(
    ThemeExtension<ThemeTextStyles>? other,
    double t,
  ) {
    if (other is! ThemeTextStyles) {
      return this;
    }
    return ThemeTextStyles(
      fs28: TextStyle.lerp(fs28, other.fs28, t),
      fs24: TextStyle.lerp(fs24, other.fs24, t),
      fs18: TextStyle.lerp(fs18, other.fs18, t),
      button18: TextStyle.lerp(button18, other.button18, t),
      bodyText16: TextStyle.lerp(bodyText16, other.bodyText16, t),
      caption14: TextStyle.lerp(caption14, other.caption14, t),
    );
  }
}
