import 'package:flutter/material.dart';
import '../core/app_export.dart';

extension on TextStyle {
  TextStyle get poppins {
    return copyWith(
      fontFamily: 'Poppins',
    );
  }
}

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.
class CustomTextStyles {
  // Body text style
  static get bodySmallErrorContainer => theme.textTheme.bodySmall!.copyWith(
    color: theme.colorScheme.errorContainer,
  );
  static get bodySmall_1 => theme.textTheme.bodySmall!;
// Title text style
  static get titleSmallErrorContainer => theme.textTheme.titleSmall!.copyWith(
    color: theme.colorScheme.errorContainer,
    fontWeight: FontWeight.w500,
  );
  static get titleSmallMedium => theme.textTheme.titleSmall!.copyWith(
    fontWeight: FontWeight.w500,
  );
  static get titleSmallMedium_1 => theme.textTheme.titleSmall!.copyWith(
    fontWeight: FontWeight.w500,
  );
  static get titleSmallOnErrorContainer => theme.textTheme.titleSmall!.copyWith(
    color: theme.colorScheme.onErrorContainer,
    fontWeight: FontWeight.w500,
  );
  static get titleSmallPrimary => theme.textTheme.titleSmall!.copyWith(
    color: theme.colorScheme.primary,
    fontWeight: FontWeight.w500,
  );
}

