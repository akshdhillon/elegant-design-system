import 'package:flutter/material.dart';

extension DimensionExtension on double {

  EdgeInsets get horizontal => EdgeInsets.symmetric(horizontal: this);

  EdgeInsets get vertical => EdgeInsets.symmetric(vertical: this);

  EdgeInsets get all => EdgeInsets.all(this);
}
