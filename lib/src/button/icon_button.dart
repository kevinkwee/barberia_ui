import 'package:flutter/material.dart';

import '../constants.dart' as k;
import '../widget_size.dart';
import 'base_button.dart';
import 'button_variant.dart';

class BIconButton extends BBaseButton {
  const BIconButton({
    super.key,
    required this.child,
    super.onPressed,
    super.busy = false,
    super.enabled = true,
    super.size = BWidgetSize.large,
    super.variant = BButtonVariant.primary,
  }) : borderRadius = k.borderRadius;

  BIconButton.circle({
    super.key,
    required this.child,
    super.onPressed,
    super.busy = false,
    super.enabled = true,
    super.size = BWidgetSize.large,
    super.variant = BButtonVariant.primary,
  }) : borderRadius = BorderRadius.all(Radius.circular(size.value / 2));

  /// Typically [Icon] widget.
  final Widget child;
  final BorderRadiusGeometry borderRadius;

  @override
  Widget buildChild(contentColorResolver, textStyleResolver, iconSizeResolver) {
    return DefaultTextStyle(
      style: textStyleResolver(),
      child: IconTheme(
        data: IconThemeData(
          color: contentColorResolver(),
          opacity: 1,
          size: iconSizeResolver(),
        ),
        child: child,
      ),
    );
  }

  @override
  BorderRadiusGeometry resolveBorderRadius() => borderRadius;

  @override
  BoxConstraints resolveConstraints() {
    return BoxConstraints(
      minWidth: size.value,
      maxWidth: size.value,
      minHeight: size.value,
      maxHeight: size.value,
    );
  }
}
