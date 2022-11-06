import 'package:flutter/material.dart';

import '../colors.dart';
import 'base_button.dart';
import 'button_variant.dart';

class BarberiaButton extends BarberiaBaseButton {
  const BarberiaButton({
    super.key,
    super.onPressed,
    super.variant = ButtonVariant.normal,
    super.busy = false,
    super.enabled = true,
    required super.label,
  }) : super(
          splashColor: BarberiaColors.neutral200,
          dense: false,
        );

  @override
  BorderSide resolveBorderSide() => BorderSide.none;

  @override
  Color resolveButtonColor() {
    return enabled ? BarberiaColors.primary : BarberiaColors.neutral500;
  }

  @override
  Color resolveContentColor() {
    return enabled ? BarberiaColors.neutral1000 : BarberiaColors.neutral300;
  }
}
