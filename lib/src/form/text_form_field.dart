import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';
import '../text/styles.dart';
import 'text_form_field_variant.dart';

class BarberiaTextFormField extends StatelessWidget {
  const BarberiaTextFormField({
    super.key,
    this.hintText,
    this.prefixText,
    this.prefix,
    this.suffix,
    this.suffixIcon,
    this.maxLines,
    this.controller,
    this.textCapitalization = TextCapitalization.none,
    this.autovalidateMode,
    this.keyboardType,
    this.readOnly = false,
    this.obscureText = false,
    this.variant = TextFormFieldVariant.large,
    required this.validator,
    required this.onChanged,
  });

  final String? hintText;
  final String? prefixText;
  final Widget? prefix;
  final Widget? suffix;
  final Widget? suffixIcon;
  final int? maxLines;
  final String? Function(String?) validator;
  final TextEditingController? controller;
  final AutovalidateMode? autovalidateMode;
  final TextInputType? keyboardType;
  final TextCapitalization textCapitalization;
  final ValueChanged<String> onChanged;
  final bool readOnly;
  final bool obscureText;
  final TextFormFieldVariant variant;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      autovalidateMode: autovalidateMode,
      controller: controller,
      textCapitalization: textCapitalization,
      keyboardType: keyboardType,
      maxLines: maxLines,
      readOnly: readOnly,
      style: bodyStyle,
      obscureText: obscureText,
      decoration: InputDecoration(
        hintText: hintText,
        prefixText: prefixText,
        suffixIcon: suffixIcon,
        contentPadding: variant.padding,
        constraints: BoxConstraints(
          minHeight: variant.height,
          maxHeight: (maxLines ?? 1) == 1 ? variant.height : double.infinity,
        ),
        hintStyle: bodyStyle.copyWith(color: BarberiaColors.neutral600),
        enabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: BarberiaColors.neutral200,
          ),
          borderRadius: borderRadius,
        ),
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: BarberiaColors.neutral100,
            width: 2,
          ),
          borderRadius: borderRadius,
        ),
        errorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: BarberiaColors.orangeRedCrayola500,
          ),
          borderRadius: borderRadius,
        ),
        focusedErrorBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: BarberiaColors.orangeRedCrayola500,
            width: 2,
          ),
          borderRadius: borderRadius,
        ),
        disabledBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: BarberiaColors.neutral400,
          ),
          borderRadius: borderRadius,
        ),
      ),
      validator: validator,
      onChanged: onChanged,
    );
  }
}
