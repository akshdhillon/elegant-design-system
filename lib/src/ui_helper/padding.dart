import 'package:elegant/src/ui_helper/dimension.dart' as d;
import 'package:flutter/material.dart';

extension ThemeDataExtension on ThemeData {
  // Radius
  d.Radii get radius => d.Radii(1.0);

  // Margin
  d.Margin get margin => d.Margin();

  // Padding
  d.Padding get padding => d.Padding();
}
