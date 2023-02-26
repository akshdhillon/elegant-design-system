import 'package:flutter/material.dart';

extension DimensionExtension on double {
  // Margin
  SizedBox get verticalMargin => SizedBox(height: this);

  SizedBox get horizontalMargin => SizedBox(height: this);

  // Padding
  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: this);

  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: this);

  EdgeInsets get all => EdgeInsets.all(this);
}
