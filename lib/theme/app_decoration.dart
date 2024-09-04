import 'package:flutter/material.dart';
import '../core/app_export.dart';

class AppDecoration {
  // Background decorations
  static BoxDecoration get background => BoxDecoration(
    color: appTheme.gray50,
  );
// Neutral decorations
  static BoxDecoration get neutral300 => BoxDecoration(
    color: theme.colorScheme.onErrorContainer,
    border: Border.all(
      color: theme.colorScheme.onPrimary,
      width: 1.h,
    ),
  );
}

class BorderRadiusStyle {
  // Rounded borders
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
    16.h,
  );
}

