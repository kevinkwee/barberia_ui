import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';

class BarberiaListTile extends StatelessWidget {
  const BarberiaListTile({
    super.key,
    required this.title,
    this.subtitle,
    this.prefix,
    this.suffix,
    this.onTap,
    this.padding = const EdgeInsets.all(8),
  });

  final Widget title;
  final Widget? subtitle;
  final Widget? prefix;
  final Widget? suffix;
  final VoidCallback? onTap;
  final EdgeInsetsGeometry padding;

  List<Widget> _buildPrefix() => prefix != null
      ? [
          prefix!,
          const SizedBox(width: 8),
        ]
      : [];

  List<Widget> _buildSubtitle() => subtitle != null
      ? [
          const SizedBox(height: 2),
          subtitle!,
        ]
      : [];

  @override
  Widget build(BuildContext context) {
    return Material(
      color: BarberiaColors.neutral800,
      borderRadius: borderRadius,
      child: Container(
        decoration: const BoxDecoration(
          border: Border.fromBorderSide(BorderSide.none),
          borderRadius: borderRadius,
        ),
        constraints: const BoxConstraints(
          minHeight: 48,
        ),
        clipBehavior: Clip.hardEdge,
        child: InkWell(
          onTap: onTap,
          highlightColor: BarberiaColors.neutral700,
          hoverColor: BarberiaColors.neutral900.withOpacity(0.5),
          splashColor: BarberiaColors.neutral600,
          borderRadius: borderRadius,
          child: Padding(
            padding: padding,
            child: Row(
              children: [
                ..._buildPrefix(),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      title,
                      ..._buildSubtitle(),
                    ],
                  ),
                ),
                if (suffix != null) suffix!,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
