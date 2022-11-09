import 'package:flutter/material.dart';

import '../colors.dart';

class BAppBar extends AppBar {
  BAppBar({
    super.key,
    super.leading,
    super.title,
    super.actions,
  }) : super(
          automaticallyImplyLeading: false,
          backgroundColor: BarberiaColors.background,
          foregroundColor: BarberiaColors.onBackground,
          centerTitle: true,
          elevation: 0,
        );
}
