import 'package:flutter/material.dart';

import '../button/button_variant.dart';
import '../button/icon_button.dart';
import '../colors.dart';
import '../text/text.dart';
import '../widget_size.dart';

class BAppBar extends AppBar {
  BAppBar({
    super.key,
    super.leading,
    super.title,
    super.actions,
  }) : super(
          automaticallyImplyLeading: false,
          backgroundColor: BarberiaColors.background,
          foregroundColor: BarberiaColors.onBackground,
          centerTitle: true,
          elevation: 0,
        );

  factory BAppBar.defaultWithBackButton({
    required String title,
    required VoidCallback popHandler,
  }) =>
      BAppBar(
        leading: Center(
          child: BIconButton.circle(
            onPressed: popHandler,
            variant: BButtonVariant.bare,
            size: BWidgetSize.small,
            child: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        title: BText.titleSmall(
          'Masuk',
          align: TextAlign.center,
        ),
      );
}
