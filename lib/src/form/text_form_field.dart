import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';
import '../text/styles.dart';
import '../theme.dart';
import '../widget_size.dart';

class BTextFormField extends StatelessWidget {
  const BTextFormField({
    super.key,
    this.hintText,
    this.prefixText,
    this.prefix,
    this.prefixIcon,
    this.suffixText,
    this.suffix,
    this.suffixIcon,
    this.maxLines = 1,
    this.controller,
    this.textCapitalization = TextCapitalization.none,
    this.textInputAction,
    this.autovalidateMode,
    this.keyboardType,
    this.textAlign = TextAlign.start,
    this.readOnly = false,
    this.obscureText = false,
    this.filled = false,
    this.enabled = true,
    this.size = BWidgetSize.large,
    this.validator,
    required this.onChanged,
    this.onFieldSubmitted,
  });

  final String? hintText;
  final String? prefixText;
  final Widget? prefix;
  final Widget? prefixIcon;
  final String? suffixText;
  final Widget? suffix;
  final Widget? suffixIcon;
  final TextAlign textAlign;
  final int maxLines;
  final TextEditingController? controller;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final TextInputAction? textInputAction;
  final String? Function(String?)? validator;
  final ValueChanged<String> onChanged;
  final ValueChanged<String>? onFieldSubmitted;
  final bool readOnly;
  final bool obscureText;
  final bool filled;
  final bool enabled;
  final BWidgetSize size;

  TextStyle get textStyle {
    final style = size == BWidgetSize.mini ? captionStyle : bodyStyle;

    if (filled) {
      return style.copyWith(color: BColors.onPrimary);
    }

    return style;
  }

  TextStyle get hintStyle {
    final style = size == BWidgetSize.mini ? captionStyle : bodyStyle;

    return style.copyWith(
      color: BColors.neutral500,
      fontWeight: FontWeight.w600,
    );
  }

  BorderSide get enabledBorder =>
      filled ? BorderSide.none : const BorderSide(color: BColors.neutral200);

  BorderSide get focusedBorder => filled
      ? BorderSide.none
      : const BorderSide(
          color: BColors.neutral100,
          width: 2,
        );

  BorderSide get errorBorder => filled
      ? BorderSide.none
      : const BorderSide(color: BColors.orangeRedCrayola500);

  BorderSide get focusedErrorBorder => filled
      ? BorderSide.none
      : const BorderSide(
          color: BColors.orangeRedCrayola500,
          width: 2,
        );

  BorderSide get disabledBorder =>
      filled ? BorderSide.none : const BorderSide(color: BColors.neutral400);

  Color get cursorColor => filled ? BColors.neutral500 : BColors.neutral200;

  Color get selectionColor =>
      filled ? BColors.neutral1000t64 : BColors.neutral0t64;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: createBarberiaMaterialTheme().copyWith(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: cursorColor,
          selectionColor: selectionColor,
          selectionHandleColor: BColors.info,
        ),
      ),
      child: TextFormField(
        enabled: enabled,
        autovalidateMode: autovalidateMode,
        controller: controller,
        textCapitalization: textCapitalization,
        textInputAction: textInputAction,
        keyboardType: keyboardType,
        maxLines: maxLines,
        readOnly: readOnly,
        style: textStyle,
        obscureText: obscureText,
        textAlign: textAlign,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: hintStyle,
          prefixText: prefixText,
          prefixStyle: textStyle,
          prefixIcon: prefixIcon,
          prefixIconConstraints: BoxConstraints(maxHeight: size.value),
          prefix: prefix,
          suffixText: suffixText,
          suffixStyle: textStyle,
          suffix: suffix,
          suffixIcon: suffixIcon,
          suffixIconConstraints: BoxConstraints(maxHeight: size.value),
          filled: filled,
          fillColor: BColors.onBackground,
          errorStyle: captionStyle.copyWith(
            color: BColors.negative,
            fontWeight: FontWeight.w700,
          ),
          contentPadding: EdgeInsets.symmetric(horizontal: 12, vertical: maxLines > 1 ? 4 : 0),
          constraints: BoxConstraints(
            minHeight: size.value,
            // maxHeight: maxLines == 1 ? size.value : double.infinity,
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: enabledBorder,
            borderRadius: borderRadius,
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: focusedBorder,
            borderRadius: borderRadius,
          ),
          errorBorder: OutlineInputBorder(
            borderSide: errorBorder,
            borderRadius: borderRadius,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderSide: focusedErrorBorder,
            borderRadius: borderRadius,
          ),
          disabledBorder: OutlineInputBorder(
            borderSide: disabledBorder,
            borderRadius: borderRadius,
          ),
        ),
        validator: validator,
        onChanged: onChanged,
        onFieldSubmitted: onFieldSubmitted,
      ),
    );
  }
}
