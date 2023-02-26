import 'package:flutter/material.dart';

extension ColorSchemeExtension on ColorScheme {
  // Surface
  Color get surface1 => Color.alphaBlend(primary.withOpacity(0.05), surface);

  Color get surface2 => Color.alphaBlend(primary.withOpacity(0.08), surface);

  Color get surface3 => Color.alphaBlend(primary.withOpacity(0.11), surface);

  Color get surface4 => Color.alphaBlend(primary.withOpacity(0.12), surface);

  Color get surface5 => Color.alphaBlend(primary.withOpacity(0.14), surface);

  Color get onSurfaceTint =>
      Color.alphaBlend(primary.withOpacity(0.5), onSurface);

  // Custom Colors
  Color get white => Colors.white;

  Color get black => Colors.black;

  Color get highPriority => Colors.red;

  Color get normalPriority => Colors.green;

  Color get secondaryError => Colors.red;

  Color get onSecondaryError => Colors.white;

  Color get transparent => Colors.transparent;
}
