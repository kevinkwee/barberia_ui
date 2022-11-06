import 'package:flutter/rendering.dart';

import '../text/styles.dart';

enum ButtonVariant { large, medium, small }

extension ButtonVariantX on ButtonVariant {
  double get height {
    switch (this) {
      case ButtonVariant.large:
        return 48;
      case ButtonVariant.medium:
        return 36;
      default:
        return 24;
    }
  }

  double get padding {
    switch (this) {
      case ButtonVariant.large:
        return 16;
      case ButtonVariant.medium:
        return 8;
      default:
        return 4;
    }
  }

  TextStyle get textStyle {
    switch (this) {
      case ButtonVariant.large:
      case ButtonVariant.medium:
        return bodyStyle;
      default:
        return captionStyle;
    }
  }
}
