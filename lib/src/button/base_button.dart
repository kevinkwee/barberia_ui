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
          return BColors.primary;
        case BButtonVariant.outlined:
          return BColors.transparent;
        case BButtonVariant.bare:
          return BColors.transparent;
        case BButtonVariant.bareAlt:
          return BColors.transparent;
        case BButtonVariant.positive:
          return BColors.positive;
        case BButtonVariant.negative:
          return BColors.negative;
        case BButtonVariant.warning:
          return BColors.warning;
      }
    }

    switch (variant) {
      case BButtonVariant.primary:
      case BButtonVariant.positive:
      case BButtonVariant.negative:
      case BButtonVariant.warning:
        return BColors.disabled;
      case BButtonVariant.outlined:
      case BButtonVariant.bare:
      case BButtonVariant.bareAlt:
        return BColors.transparent;
    }
  }

  Color _resolveSplashColor() {
    switch (variant) {
      case BButtonVariant.primary:
      case BButtonVariant.positive:
      case BButtonVariant.negative:
      case BButtonVariant.warning:
        return BColors.neutral1000t64;
      case BButtonVariant.outlined:
      case BButtonVariant.bare:
      case BButtonVariant.bareAlt:
        return BColors.neutral0t64;
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
          return BColors.onPrimary;
        case BButtonVariant.outlined:
          return BColors.primary;
        case BButtonVariant.bare:
          return BColors.primary;
        case BButtonVariant.bareAlt:
          return BColors.info;
        case BButtonVariant.positive:
          return BColors.onPositive;
        case BButtonVariant.negative:
          return BColors.onNegative;
        case BButtonVariant.warning:
          return BColors.onWarning;
      }
    }

    switch (variant) {
      case BButtonVariant.primary:
      case BButtonVariant.positive:
      case BButtonVariant.negative:
      case BButtonVariant.warning:
        return BColors.onDisabled;
      case BButtonVariant.outlined:
      case BButtonVariant.bare:
      case BButtonVariant.bareAlt:
        return BColors.disabled;
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
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      highlightElevation: 0,
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
