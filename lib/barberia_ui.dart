library barberia_ui;

import 'package:barberia_ui/src/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// button
export 'src/button/button.dart';
export 'src/button/button_variant.dart';
export 'src/button/icon_button.dart';

// form
export 'src/form/text_form_field.dart';
export 'src/form/text_form_field_variant.dart';

// list
export 'src/list/list_tile.dart';

// text
export 'src/text/emphasis.dart';
export 'src/text/text.dart';

// shared
export 'src/card.dart';
export 'src/colors.dart';
export 'src/constants.dart';
export 'src/widget_size.dart';

ThemeData createBarberiaMaterialTheme() => ThemeData(
      brightness: Brightness.dark,
      visualDensity: VisualDensity.standard,
      backgroundColor: BarberiaColors.background,
      scaffoldBackgroundColor: BarberiaColors.background,
      fontFamily: 'packages/barberia_ui/OpenSans',
      cupertinoOverrideTheme: const CupertinoThemeData.raw(
        Brightness.dark,
        BarberiaColors.primary,
        BarberiaColors.onPrimary,
        CupertinoTextThemeData(),
        BarberiaColors.neutral900,
        BarberiaColors.background,
      ),
    );
