import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData createBarberiaMaterialTheme() => ThemeData(
      brightness: Brightness.dark,
      visualDensity: VisualDensity.standard,
      backgroundColor: BColors.background,
      scaffoldBackgroundColor: BColors.background,
      fontFamily: 'packages/barberia_ui/OpenSans',
      bottomSheetTheme: const BottomSheetThemeData(
        elevation: 0,
        backgroundColor: BColors.transparent,
      ),
      colorScheme: const ColorScheme.dark(
        primary: BColors.primary,
        onPrimary: BColors.onPrimary,
        primaryContainer: BColors.surface,
        onPrimaryContainer: BColors.onSurface,
        secondary: BColors.secondaryTextColor,
        onSecondary: BColors.onPrimary,
        error: BColors.negative,
        onError: BColors.onNegative,
        background: BColors.background,
        onBackground: BColors.onBackground,
        surface: BColors.surface,
        onSurface: BColors.onSurface,
      ),
      cupertinoOverrideTheme: const CupertinoThemeData.raw(
        Brightness.dark,
        BColors.primary,
        BColors.onPrimary,
        CupertinoTextThemeData(),
        BColors.neutral900,
        BColors.background,
      ),
    );
