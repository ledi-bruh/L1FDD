import 'package:flutter/material.dart';
import 'package:fall_2023_project/app/resources/fonts.dart';
import 'package:fall_2023_project/app/resources/colors.dart';

abstract class AppTheme {
  static final ThemeData light = ThemeData(
    useMaterial3: true,
    brightness: Brightness.light,
    colorScheme: ColorScheme.fromSeed(seedColor: AppColors.primary),
    dividerColor: AppColors.divider,
    textTheme: const TextTheme(
      displayMedium: AppFonts.displayMedium,
      titleLarge: AppFonts.titleLarge,
      titleMedium: AppFonts.titleMedium,
      bodyLarge: AppFonts.bodyLarge,
      bodyMedium: AppFonts.bodyMedium,
      bodySmall: AppFonts.bodySmall,
      labelMedium: AppFonts.labelMedium,
      labelSmall: AppFonts.labelSmall,
    ),
  );
}
