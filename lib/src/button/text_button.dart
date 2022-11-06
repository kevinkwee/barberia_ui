import 'package:flutter/material.dart';

import '../colors.dart';
import 'base_button.dart';
import 'button_variant.dart';

class BarberiaTextButton extends BarberiaBaseButton {
  const BarberiaTextButton({
    super.key,
    super.onPressed,
    super.variant = ButtonVariant.large,
    super.enabled = true,
    super.dense = false,
    required super.label,
  }) : super(
          busy: false,
          splashColor: BarberiaColors.neutral900,
        );

  @override
  BorderSide resolveBorderSide() => BorderSide.none;

  @override
  Color resolveButtonColor() => BarberiaColors.transparent;

  @override
  Color resolveContentColor() {
    return enabled ? BarberiaColors.neutral50 : BarberiaColors.neutral500;
  }
}
