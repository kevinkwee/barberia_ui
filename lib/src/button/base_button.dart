import 'package:flutter/material.dart';

import '../colors.dart';
import '../text/styles.dart';
import '../widget_size.dart';
import 'button_variant.dart';

abstract class BBaseButton extends StatelessWidget {
  const BBaseButton({
    super.key,
    required this.onPressed,
    required this.busy,
    required this.enabled,
    required this.size,
    required this.variant,
  });

  final VoidCallback? onPressed;
  final BButtonVariant variant;
  final BWidgetSize size;
  final bool busy;
  final bool enabled;

  VoidCallback? _resolveOnPressed() {
    return enabled && !busy ? onPressed : null;
  }

  Color _resolveButtonColor() {
    if (enabled) {
      switch (variant) {
        case BButtonVariant.primary:
          return BarberiaColors.primary;
        case BButtonVariant.outlined:
          return BarberiaColors.transparent;
        case BButtonVariant.bare:
          return BarberiaColors.transparent;
        case BButtonVariant.bareAlt:
          return BarberiaColors.transparent;
        case BButtonVariant.positive:
          return BarberiaColors.positive;
        case BButtonVariant.negative:
          return BarberiaColors.negative;
        case BButtonVariant.warning:
          return BarberiaColors.warning;
      }
    }

    switch (variant) {
      case BButtonVariant.primary:
      case BButtonVariant.positive:
      case BButtonVariant.negative:
      case BButtonVariant.warning:
        return BarberiaColors.disabled;
      case BButtonVariant.outlined:
      case BButtonVariant.bare:
      case BButtonVariant.bareAlt:
        return BarberiaColors.transparent;
    }
  }

  Color _resolveSplashColor() {
    switch (variant) {
      case BButtonVariant.primary:
      case BButtonVariant.positive:
      case BButtonVariant.negative:
      case BButtonVariant.warning:
        return BarberiaColors.neutral1000t64;
      case BButtonVariant.outlined:
      case BButtonVariant.bare:
      case BButtonVariant.bareAlt:
        return BarberiaColors.neutral0t64;
    }
  }

  BorderSide _resolveBorderSide() {
    if (variant == BButtonVariant.outlined) {
      return BorderSide(color: _resolveContentColor());
    }

    return BorderSide.none;
  }

  double _resolvePadding() {
    switch (size) {
      case BWidgetSize.mini:
      case BWidgetSize.small:
        return 4;
      case BWidgetSize.medium:
      case BWidgetSize.large:
        return 8;
    }
  }

  Color _resolveContentColor() {
    if (enabled) {
      switch (variant) {
        case BButtonVariant.primary:
          return BarberiaColors.onPrimary;
        case BButtonVariant.outlined:
          return BarberiaColors.primary;
        case BButtonVariant.bare:
          return BarberiaColors.primary;
        case BButtonVariant.bareAlt:
          return BarberiaColors.info;
        case BButtonVariant.positive:
          return BarberiaColors.onPositive;
        case BButtonVariant.negative:
          return BarberiaColors.onNegative;
        case BButtonVariant.warning:
          return BarberiaColors.onWarning;
      }
    }

    switch (variant) {
      case BButtonVariant.primary:
      case BButtonVariant.positive:
      case BButtonVariant.negative:
      case BButtonVariant.warning:
        return BarberiaColors.onDisabled;
      case BButtonVariant.outlined:
      case BButtonVariant.bare:
      case BButtonVariant.bareAlt:
        return BarberiaColors.disabled;
    }
  }

  TextStyle _resolveTextStyle() {
    late final TextStyle textStyle;

    switch (size) {
      case BWidgetSize.mini:
      case BWidgetSize.small:
        textStyle = captionStyle;
        break;
      case BWidgetSize.medium:
      case BWidgetSize.large:
        textStyle = bodyStyle;
    }

    return textStyle.copyWith(
      fontWeight: FontWeight.w700,
      color: _resolveContentColor(),
      height: 1,
    );
  }

  double _resolveIconSize() {
    switch (size) {
      case BWidgetSize.mini:
      case BWidgetSize.small:
        return 16;
      case BWidgetSize.medium:
      case BWidgetSize.large:
        return 24;
    }
  }

  Widget _buildChild() {
    if (busy) {
      return AspectRatio(
        aspectRatio: 1.0,
        child: CircularProgressIndicator(
          color: _resolveContentColor(),
          strokeWidth: 2,
        ),
      );
    }

    return buildChild(
      _resolveContentColor,
      _resolveTextStyle,
      _resolveIconSize,
    );
  }

  BoxConstraints resolveConstraints();
  BorderRadiusGeometry resolveBorderRadius();
  Widget buildChild(
    Color Function() contentColorResolver,
    TextStyle Function() textStyleResolver,
    double Function() iconSizeResolver,
  );

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: _resolveOnPressed(),
      fillColor: _resolveButtonColor(),
      splashColor: _resolveSplashColor(),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: EdgeInsets.all(_resolvePadding()),
      constraints: resolveConstraints(),
      shape: RoundedRectangleBorder(
        side: _resolveBorderSide(),
        borderRadius: resolveBorderRadius(),
      ),
      child: _buildChild(),
    );
  }
}
