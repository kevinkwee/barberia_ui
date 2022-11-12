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
    super.leadingWidth,
    super.toolbarHeight,
    super.title,
    super.titleSpacing,
    super.actions,
    super.centerTitle = true,
    super.automaticallyImplyLeading = true,
  }) : super(
          backgroundColor: BColors.background,
          foregroundColor: BColors.onBackground,
          elevation: 0,
        );

  factory BAppBar.defaultWithBackButton(BuildContext context, String title) =>
      BAppBar(
        leading: Center(
          child: BIconButton.circle(
            onPressed: () => Navigator.of(context).pop(),
            variant: BButtonVariant.bare,
            size: BWidgetSize.small,
            child: const Icon(Icons.arrow_back_ios_new),
          ),
        ),
        title: BText.titleSmall(
          title,
          align: TextAlign.center,
        ),
      );
}
