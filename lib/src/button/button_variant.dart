import 'package:flutter/rendering.dart';

import '../text/styles.dart';

enum ButtonVariant { normal, small }

extension ButtonVariantToHeight on ButtonVariant {
  double get height => this == ButtonVariant.normal ? 36 : 24;
  double get padding => this == ButtonVariant.normal ? 8 : 4;
  TextStyle get textStyle =>
      this == ButtonVariant.normal ? bodyStyle : captionStyle;
}
