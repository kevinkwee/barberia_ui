import 'package:flutter/rendering.dart';

import '../colors.dart';

const baseTextStyle = TextStyle(
  fontFamily: 'OpenSans',
  package: 'barberia_ui',
  color: BarberiaColors.defaultTextColor,
  overflow: TextOverflow.ellipsis,
);

TextStyle get displayStyle => baseTextStyle.copyWith(
      fontSize: 36,
      height: 44 / 36,
      fontWeight: FontWeight.w700,
      color: BarberiaColors.highlightTextColor,
    );

TextStyle get highlightLargeStyle => baseTextStyle.copyWith(
      fontSize: 22,
      height: 28 / 22,
      fontWeight: FontWeight.w700,
      color: BarberiaColors.highlightTextColor,
    );

TextStyle get highlightMediumStyle => baseTextStyle.copyWith(
      fontSize: 16,
      height: 24 / 16,
      fontWeight: FontWeight.w700,
      color: BarberiaColors.highlightTextColor,
    );

TextStyle get highlightSmallStyle => baseTextStyle.copyWith(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w700,
      color: BarberiaColors.highlightTextColor,
    );

TextStyle get titleLargeStyle => baseTextStyle.copyWith(
      fontSize: 22,
      height: 28 / 22,
      fontWeight: FontWeight.w600,
      color: BarberiaColors.highlightTextColor,
    );

TextStyle get titleMediumStyle => baseTextStyle.copyWith(
      fontSize: 16,
      height: 24 / 16,
      fontWeight: FontWeight.w600,
      color: BarberiaColors.highlightTextColor,
    );

TextStyle get titleSmallStyle => baseTextStyle.copyWith(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w600,
      color: BarberiaColors.highlightTextColor,
    );

TextStyle get bodyStyle => baseTextStyle.copyWith(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w400,
    );

TextStyle get captionStyle => baseTextStyle.copyWith(
      fontSize: 11,
      height: 16 / 11,
      fontWeight: FontWeight.w400,
    );
