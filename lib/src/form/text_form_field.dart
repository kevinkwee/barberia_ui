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
    this.autovalidateMode,
    this.keyboardType,
    this.readOnly = false,
    this.obscureText = false,
    this.filled = false,
    this.size = BWidgetSize.large,
    this.validator,
    required this.onChanged,
  });

  final String? hintText;
  final String? prefixText;
  final Widget? prefix;
  final Widget? prefixIcon;
  final String? suffixText;
  final Widget? suffix;
  final Widget? suffixIcon;
  final int maxLines;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final ValueChanged<String> onChanged;
  final bool readOnly;
  final bool obscureText;
  final bool filled;
  final BWidgetSize size;

  TextStyle get textStyle {
    final style = size == BWidgetSize.mini ? captionStyle : bodyStyle;

    if (filled) {
      return style.copyWith(color: BarberiaColors.onPrimary);
    }

    return style;
  }

  BorderSide get enabledBorder => filled
      ? BorderSide.none
      : const BorderSide(color: BarberiaColors.neutral200);

  BorderSide get focusedBorder => filled
      ? BorderSide.none
      : const BorderSide(
          color: BarberiaColors.neutral100,
          width: 2,
        );

  BorderSide get errorBorder => filled
      ? BorderSide.none
      : const BorderSide(color: BarberiaColors.orangeRedCrayola500);

  BorderSide get focusedErrorBorder => filled
      ? BorderSide.none
      : const BorderSide(
          color: BarberiaColors.orangeRedCrayola500,
          width: 2,
        );

  BorderSide get disabledBorder => filled
      ? BorderSide.none
      : const BorderSide(color: BarberiaColors.neutral400);

  Color get cursorColor =>
      filled ? BarberiaColors.neutral500 : BarberiaColors.neutral200;

  Color get selectionColor =>
      filled ? BarberiaColors.neutral1000t64 : BarberiaColors.neutral0t64;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: createBarberiaMaterialTheme().copyWith(
        textSelectionTheme: TextSelectionThemeData(
          cursorColor: cursorColor,
          selectionColor: selectionColor,
          selectionHandleColor: BarberiaColors.info,
        ),
      ),
      child: TextFormField(
        autovalidateMode: autovalidateMode,
        controller: controller,
        textCapitalization: textCapitalization,
        keyboardType: keyboardType,
        maxLines: maxLines,
        readOnly: readOnly,
        style: textStyle,
        obscureText: obscureText,
        decoration: InputDecoration(
          hintText: hintText,
          hintStyle: bodyStyle.copyWith(
            color: BarberiaColors.neutral500,
            fontWeight: FontWeight.w600,
          ),
          prefixText: prefixText,
          prefixStyle: textStyle,
          prefixIcon: prefixIcon,
          prefixIconConstraints: const BoxConstraints(),
          prefix: prefix,
          suffixText: suffixText,
          suffixStyle: textStyle,
          suffix: suffix,
          suffixIcon: suffixIcon,
          suffixIconConstraints: const BoxConstraints(),
          filled: filled,
          fillColor: BarberiaColors.onBackground,
          errorStyle: captionStyle.copyWith(
            color: BarberiaColors.negative,
            fontWeight: FontWeight.w700,
          ),
          contentPadding: const EdgeInsets.symmetric(horizontal: 12),
          constraints: BoxConstraints(
            minHeight: size.value,
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
      ),
    );
  }
}
