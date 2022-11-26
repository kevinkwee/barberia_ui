import 'package:flutter/rendering.dart';

const borderRadius = BorderRadius.all(Radius.circular(8));

enum BPaddingSize { mini, small, medium, large }

extension BPaddingSizeValue on BPaddingSize {
  double get value {
    switch (this) {
      case BPaddingSize.mini:
        return 4;
      case BPaddingSize.small:
        return 8;
      case BPaddingSize.medium:
        return 16;
      case BPaddingSize.large:
        return 20;
    }
  }
}
