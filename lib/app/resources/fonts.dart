import 'package:flutter/material.dart';
import 'package:fall_2023_project/app/resources/colors.dart';

abstract class FontFamilies {
  static const String display = "SF_Pro_Display";
  static const String text = "SF_Pro_Text";
}

abstract class AppFonts {
  static const TextStyle displayMedium = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 24,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    letterSpacing: -0.7,
    height: 4 / 3,
    fontFamily: FontFamilies.display,
  );
  static const TextStyle titleLarge = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 20,
    fontWeight: FontWeight.w700,
    fontStyle: FontStyle.normal,
    letterSpacing: -0.7,
    height: 1.2,
    fontFamily: FontFamilies.text,
  );
  static const TextStyle titleMedium = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: -0.4,
    height: 1.25,
    fontFamily: FontFamilies.text,
  );
  static const TextStyle bodyLarge = TextStyle(
    color: AppColors.textSecondary,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: -0.42,
    height: 9 / 7,
    fontFamily: FontFamilies.text,
  );
  static const TextStyle bodyMedium = TextStyle(
    color: AppColors.textPrimary,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: -0.406,
    height: 9 / 7,
    fontFamily: FontFamilies.text,
  );
  static const TextStyle bodySmall = TextStyle(
    color: AppColors.textSecondary,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: -0.406,
    height: 9 / 7,
    fontFamily: FontFamilies.text,
  );
  static const TextStyle labelMedium = TextStyle( //
    color: AppColors.textPrimary,
    fontSize: 16,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: -0.4,
    height: 1.25,
    fontFamily: FontFamilies.text,
  );
  static const TextStyle labelSmall = TextStyle(  //
    color: AppColors.textPrimary,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.normal,
    letterSpacing: -0.406,
    height: 9 / 7,
    fontFamily: FontFamilies.text,
  );
}
