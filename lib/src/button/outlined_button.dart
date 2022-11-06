import 'package:flutter/rendering.dart';

import '../colors.dart';
import 'base_button.dart';
import 'button_variant.dart';

class BarberiaOutlinedButton extends BarberiaBaseButton {
  const BarberiaOutlinedButton({
    super.key,
    super.onPressed,
    super.variant = ButtonVariant.normal,
    super.busy = false,
    super.enabled = true,
    required super.label,
  }) : super(splashColor: BarberiaColors.neutral900);

  @override
  BorderSide resolveBorderSide() => BorderSide(color: resolveContentColor());

  @override
  Color resolveButtonColor() => BarberiaColors.transparent;

  @override
  Color resolveContentColor() {
    return enabled ? BarberiaColors.primary : BarberiaColors.neutral500;
  }
}
