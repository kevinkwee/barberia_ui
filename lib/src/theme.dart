import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'colors.dart';

ThemeData createBarberiaMaterialTheme() => ThemeData(
      brightness: Brightness.dark,
      visualDensity: VisualDensity.standard,
      backgroundColor: BarberiaColors.background,
      scaffoldBackgroundColor: BarberiaColors.background,
      fontFamily: 'packages/barberia_ui/OpenSans',
      colorScheme: const ColorScheme.dark(
        primary: BarberiaColors.primary,
        onPrimary: BarberiaColors.onPrimary,
        primaryContainer: BarberiaColors.surface,
        onPrimaryContainer: BarberiaColors.onSurface,
        secondary: BarberiaColors.secondaryTextColor,
        onSecondary: BarberiaColors.onPrimary,
        error: BarberiaColors.negative,
        onError: BarberiaColors.onNegative,
        background: BarberiaColors.background,
        onBackground: BarberiaColors.onBackground,
        surface: BarberiaColors.surface,
        onSurface: BarberiaColors.onSurface,
      ),
      cupertinoOverrideTheme: const CupertinoThemeData.raw(
        Brightness.dark,
        BarberiaColors.primary,
        BarberiaColors.onPrimary,
        CupertinoTextThemeData(),
        BarberiaColors.neutral900,
        BarberiaColors.background,
      ),
    );
