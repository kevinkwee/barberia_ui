enum BWidgetSize { mini, small, medium, large }

extension BWidgetSizeValue on BWidgetSize {
  double get value {
    switch (this) {
      case BWidgetSize.mini:
        return 24;
      case BWidgetSize.small:
        return 32;
      case BWidgetSize.medium:
        return 40;
      case BWidgetSize.large:
        return 48;
    }
  }
}
