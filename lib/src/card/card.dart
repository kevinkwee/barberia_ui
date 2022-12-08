import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';

class BCard extends StatelessWidget {
  const BCard({
    super.key,
    required this.child,
    this.margin = const EdgeInsets.all(8),
    this.color = BColors.surface,
  });

  final Widget child;
  final Color color;
  final EdgeInsetsGeometry margin;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: color,
      shape: const RoundedRectangleBorder(borderRadius: borderRadius),
      clipBehavior: Clip.antiAlias,
      margin: margin,
      child: child,
    );
  }
}
