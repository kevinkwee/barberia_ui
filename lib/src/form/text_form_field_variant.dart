import 'package:flutter/rendering.dart';

enum TextFormFieldVariant { large, medium, small }

extension TextFormFieldVariantX on TextFormFieldVariant {
  double get height {
    switch (this) {
      case TextFormFieldVariant.large:
        return 48;
      case TextFormFieldVariant.medium:
        return 36;
      default:
        return 24;
    }
  }

  EdgeInsetsGeometry get padding {
    switch (this) {
      case TextFormFieldVariant.large:
      case TextFormFieldVariant.medium:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 8);
      default:
        return const EdgeInsets.symmetric(horizontal: 16, vertical: 4);
    }
  }
}
