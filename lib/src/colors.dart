import 'package:flutter/material.dart';

class BarberiaColors {
  const BarberiaColors._();

  static const neutral0 = Color.fromARGB(255, 255, 255, 255);
  static const neutral25 = Color.fromARGB(255, 249, 249, 249);
  static const neutral50 = Color.fromARGB(255, 242, 242, 242);
  static const neutral100 = Color.fromARGB(255, 230, 230, 230);
  static const neutral200 = Color.fromARGB(255, 204, 204, 204);
  static const neutral300 = Color.fromARGB(255, 179, 179, 179);
  static const neutral400 = Color.fromARGB(255, 153, 153, 153);
  static const neutral500 = Color.fromARGB(255, 128, 128, 128);
  static const neutral600 = Color.fromARGB(255, 102, 102, 102);
  static const neutral700 = Color.fromARGB(255, 77, 77, 77);
  static const neutral800 = Color.fromARGB(255, 51, 51, 51);
  static const neutral900 = Color.fromARGB(255, 26, 26, 26);
  static const neutral1000 = Color.fromARGB(255, 0, 0, 0);

  static const orangeRedCrayola500 = Color(0xFFFF5E5E);
  static const screaminGreen500 = Color(0xFF5CFF5C);
  static const neonBlue500 = Color(0xFF5C5CFF);
  static const maximumYellowRed500 = Color(0xFFFFC95C);

  static const transparent = Colors.transparent;

  static const primary = neutral0;
  static const background = neutral1000;
  static const surface = neutral800;
  static const positive = screaminGreen500;
  static const negative = orangeRedCrayola500;
  static const info = neonBlue500;
  static const warning = maximumYellowRed500;

  static const defaultTextColor = neutral100;
  static const highlightTextColor = neutral0;

  /// Less emphasis text color.
  static const secondaryTextColor = neutral400;
}
