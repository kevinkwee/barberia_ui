import 'package:flutter/material.dart';

import '../constants.dart';
import '../widget_size.dart';
import 'base_button.dart';
import 'button_variant.dart';

class BButton extends BBaseButton {
  const BButton({
    super.key,
    required this.label,
    this.icon,
    super.onPressed,
    this.dense = false,
    super.busy = false,
    super.enabled = true,
    super.size = BWidgetSize.large,
    super.variant = BButtonVariant.primary,
    super.elevation = 0,
    this.textAlign = TextAlign.center,
  });

  final String label;
  final bool dense;
  final IconData? icon;
  final TextAlign textAlign;

  @override
  Widget buildChild(contentColorResolver, textStyleResolver, iconSizeResolver) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        if (icon != null) ...[
          Icon(
            icon,
            size: iconSizeResolver(),
            color: contentColorResolver(),
          ),
          const SizedBox(width: 4),
        ],
        Flexible(
          child: Text(
            label,
            textAlign: textAlign,
            style: textStyleResolver(),
          ),
        ),
      ],
    );
  }

  @override
  BorderRadiusGeometry resolveBorderRadius() => borderRadius;

  @override
  BoxConstraints resolveConstraints() {
    return BoxConstraints(
      minWidth: dense ? 0 : double.infinity,
      minHeight: size.value,
      maxHeight: size.value,
    );
  }
}
