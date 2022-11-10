import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';

class BListTile extends StatefulWidget {
  const BListTile({
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

  @override
  State<BListTile> createState() => _BListTileState();
}

class _BListTileState extends State<BListTile> {
  double scale = 1;

  void _shrinkScale() => setState(() => scale = 0.98);
  void _restoreScale() => setState(() => scale = 1);

  @override
  Widget build(BuildContext context) {
    return AnimatedScale(
      duration: const Duration(milliseconds: 300),
      scale: scale,
      child: Material(
        color: BarberiaColors.transparent,
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
            onTap: widget.onTap,
            onTapDown: (_) => _shrinkScale(),
            onTapUp: (_) => _restoreScale(),
            onTapCancel: () => _restoreScale(),
            highlightColor: BarberiaColors.neutral700.withOpacity(0.5),
            hoverColor: BarberiaColors.neutral900.withOpacity(0.5),
            splashColor: BarberiaColors.neutral600.withOpacity(0.5),
            borderRadius: borderRadius,
            child: Padding(
              padding: widget.padding,
              child: Row(
                children: [
                  if (widget.prefix != null) widget.prefix!,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        widget.title,
                        if (widget.subtitle != null) widget.subtitle!,
                      ],
                    ),
                  ),
                  if (widget.suffix != null) widget.suffix!,
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
