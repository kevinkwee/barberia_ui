import 'package:flutter/material.dart';

import '../colors.dart';
import '../constants.dart';

class BarberiaCard extends StatelessWidget {
  const BarberiaCard({super.key, required this.child});

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 0,
      color: BarberiaColors.surface,
      shape: const RoundedRectangleBorder(borderRadius: borderRadius),
      clipBehavior: Clip.antiAlias,
      child: child,
    );
  }
}
