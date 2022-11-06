import 'dart:ui';

import '../colors.dart';

enum Emphasis { normal, less }

extension EmphasisToColor on Emphasis {
  Color get color => this == Emphasis.normal
      ? BarberiaColors.defaultTextColor
      : BarberiaColors.secondaryTextColor;
}
