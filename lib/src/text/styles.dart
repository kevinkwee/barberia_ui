import 'package:flutter/rendering.dart';

import '../colors.dart';

const baseTextStyle = TextStyle(
  fontFamily: 'OpenSans',
  package: 'barberia_ui',
  color: BColors.defaultTextColor,
  overflow: TextOverflow.ellipsis,
);

TextStyle get displayStyle => baseTextStyle.copyWith(
      fontSize: 36,
      height: 44 / 36,
      fontWeight: FontWeight.w700,
      color: BColors.highlightTextColor,
    );

TextStyle get highlightLargeStyle => baseTextStyle.copyWith(
      fontSize: 22,
      height: 28 / 22,
      fontWeight: FontWeight.w700,
      color: BColors.highlightTextColor,
    );

TextStyle get highlightMediumStyle => baseTextStyle.copyWith(
      fontSize: 16,
      height: 24 / 16,
      fontWeight: FontWeight.w700,
      color: BColors.highlightTextColor,
    );

TextStyle get highlightSmallStyle => baseTextStyle.copyWith(
      fontSize: 14,
      height: 20 / 14,
      fontWeight: FontWeight.w700,
      color: BColors.highlightTextColor,
    );

TextStyle get titleLargeStyle => baseTextStyle.copyWith(
      fontSize: 22,
      // letterSpacing: 0,
      height: 28 / 22,
      fontWeight: FontWeight.w600,
      color: BColors.highlightTextColor,
    );

TextStyle get titleMediumStyle => baseTextStyle.copyWith(
      fontSize: 16,
      // letterSpacing: 0.15,
      height: 24 / 16,
      fontWeight: FontWeight.w600,
      color: BColors.highlightTextColor,
    );

TextStyle get titleSmallStyle => baseTextStyle.copyWith(
      fontSize: 14,
      // letterSpacing: 0.1,
      height: 20 / 14,
      fontWeight: FontWeight.w600,
      color: BColors.highlightTextColor,
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

// New Design
TextStyle get bodySmall => baseTextStyle.copyWith(
      fontSize: 12,
      // letterSpacing: 0.4,
      height: 16 / 12,
      fontWeight: FontWeight.w400,
    );

TextStyle get bodyMedium => baseTextStyle.copyWith(
      fontSize: 14,
      // letterSpacing: 0.25,
      height: 20 / 14,
      fontWeight: FontWeight.w400,
    );

TextStyle get bodyLarge => baseTextStyle.copyWith(
      fontSize: 16,
      // letterSpacing: 0.15,
      height: 24 / 16,
      fontWeight: FontWeight.w400,
    );

TextStyle get labelSmall => baseTextStyle.copyWith(
      fontSize: 11,
      // letterSpacing: 0.5,
      height: 16 / 11,
      fontWeight: FontWeight.w600,
    );

TextStyle get labelMedium => baseTextStyle.copyWith(
      fontSize: 12,
      // letterSpacing: 0.5,
      height: 16 / 12,
      fontWeight: FontWeight.w600,
    );

TextStyle get labelLarge => baseTextStyle.copyWith(
      fontSize: 14,
      // letterSpacing: 0.1,
      height: 20 / 14,
      fontWeight: FontWeight.w600,
    );
