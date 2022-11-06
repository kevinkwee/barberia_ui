import 'package:flutter/material.dart';

import '../constants.dart';
import 'button_variant.dart';

abstract class BarberiaBaseButton extends StatelessWidget {
  const BarberiaBaseButton({
    super.key,
    required this.label,
    required this.onPressed,
    required this.variant,
    required this.splashColor,
    required this.busy,
    required this.enabled,
  });

  final String label;
  final VoidCallback? onPressed;
  final ButtonVariant variant;
  final Color splashColor;
  final bool busy;
  final bool enabled;

  Widget _buildChild() {
    if (busy) {
      return AspectRatio(
        aspectRatio: 1.0,
        child: CircularProgressIndicator(
          color: resolveContentColor(),
          strokeWidth: 2,
        ),
      );
    }

    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text(
          label,
          textAlign: TextAlign.center,
          style: variant.textStyle.copyWith(
            fontWeight: FontWeight.w700,
            color: resolveContentColor(),
            height: 1,
          ),
        ),
      ],
    );
  }

  VoidCallback? _resolveOnPressed() {
    return enabled && !busy ? onPressed : null;
  }

  BorderSide resolveBorderSide();
  Color resolveButtonColor();
  Color resolveContentColor();

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: _resolveOnPressed(),
      fillColor: resolveButtonColor(),
      splashColor: splashColor,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      padding: EdgeInsets.all(variant.padding),
      constraints: BoxConstraints(
        minWidth: double.infinity,
        minHeight: variant.height,
        maxHeight: variant.height,
      ),
      shape: RoundedRectangleBorder(
        side: resolveBorderSide(),
        borderRadius: borderRadius,
      ),
      child: _buildChild(),
    );
  }
}
