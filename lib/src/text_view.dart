import 'package:flutter/material.dart';

class ElegantText extends Text {
  // Button
  ElegantText.buttonTitleDefault(
    String? text, {
    int? maxLines,
    TextAlign? textAlign,
    Color? color,
  }) : super(text ?? 'N/A',
            style: _buttonTitle.copyWith(color: color),
            maxLines: maxLines,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis);

  // Display
  ElegantText.displaySmall(
    String? text, {
    int? maxLines,
    TextAlign? textAlign,
    Color? color,
  }) : super(text ?? 'N/A',
            style: _displaySmall.copyWith(color: color),
            maxLines: maxLines,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis);

  ElegantText.displayMedium(
    String? text, {
    int? maxLines,
    TextAlign? textAlign,
    Color? color,
  }) : super(text ?? 'N/A',
            style: _displayMedium.copyWith(color: color),
            maxLines: maxLines,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis);

  ElegantText.displayLarge(
    String? text, {
    int? maxLines,
    TextAlign? textAlign,
    Color? color,
  }) : super(text ?? 'N/A',
            style: _displayLarge.copyWith(color: color),
            maxLines: maxLines,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis);

  // Headline
  ElegantText.headlineSmall(
    String? text, {
    int? maxLines,
    TextAlign? textAlign,
    Color? color,
  }) : super(text ?? 'N/A',
            style: _headlineSmall.copyWith(color: color),
            maxLines: maxLines,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis);

  ElegantText.headlineMedium(
    String? text, {
    int? maxLines,
    TextAlign? textAlign,
    Color? color,
  }) : super(text ?? 'N/A',
            style: _headlineMedium.copyWith(color: color),
            maxLines: maxLines,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis);

  ElegantText.headlineLarge(
    String? text, {
    int? maxLines,
    TextAlign? textAlign,
    Color? color,
  }) : super(text ?? 'N/A',
            style: _headlineLarge.copyWith(color: color),
            maxLines: maxLines,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis);

  // Title
  ElegantText.titleSmall(
    String? text, {
    int? maxLines,
    TextAlign? textAlign,
    Color? color,
  }) : super(text ?? 'N/A',
            style: _titleSmall.copyWith(color: color),
            maxLines: maxLines,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis);

  ElegantText.titleMedium(
    String? text, {
    int? maxLines,
    TextAlign? textAlign,
    Color? color,
  }) : super(text ?? 'N/A',
            style: _titleMedium.copyWith(color: color),
            maxLines: maxLines,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis);

  ElegantText.titleLarge(
    String? text, {
    int? maxLines,
    TextAlign? textAlign,
    Color? color,
  }) : super(text ?? 'N/A',
            style: _titleLarge.copyWith(color: color),
            maxLines: maxLines,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis);

  // Label
  ElegantText.labelSmall(
    String? text, {
    int? maxLines,
    TextAlign? textAlign,
    Color? color,
  }) : super(text ?? 'N/A',
            style: _labelSmall.copyWith(color: color),
            maxLines: maxLines,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis);

  ElegantText.labelMedium(
    String? text, {
    int? maxLines,
    TextAlign? textAlign,
    Color? color,
  }) : super(text ?? 'N/A',
            style: _labelMedium.copyWith(color: color),
            maxLines: maxLines,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis);

  ElegantText.labelLarge(
    String? text, {
    int? maxLines,
    TextAlign? textAlign,
    Color? color,
  }) : super(text ?? 'N/A',
            style: _labelLarge.copyWith(color: color),
            maxLines: maxLines,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis);

  // Body
  ElegantText.bodySmall(
    String? text, {
    int? maxLines,
    TextAlign? textAlign,
    Color? color,
  }) : super(text ?? 'N/A',
            style: _bodySmall.copyWith(color: color),
            maxLines: maxLines,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis);

  ElegantText.bodyMedium(
    String? text, {
    int? maxLines,
    TextAlign? textAlign,
    Color? color,
  }) : super(text ?? 'N/A',
            style: _bodyMedium.copyWith(color: color),
            maxLines: maxLines,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis);

  ElegantText.bodyLarge(
    String? text, {
    int? maxLines,
    TextAlign? textAlign,
    Color? color,
  }) : super(text ?? 'N/A',
            style: _bodyLarge.copyWith(color: color),
            maxLines: maxLines,
            textAlign: textAlign,
            overflow: TextOverflow.ellipsis);
}

// Button
const TextStyle _buttonTitle = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  fontFamily: 'Roboto',
  height: 1.42,
  letterSpacing: 0.5,
);

const TextStyle _displayLarge = TextStyle(
  fontSize: 57,
  fontWeight: FontWeight.w400,
  fontFamily: 'Roboto',
  height: 1.12,
  letterSpacing: 0,
);
const TextStyle _displayMedium = TextStyle(
  fontSize: 45,
  fontWeight: FontWeight.w400,
  fontFamily: 'Roboto',
  height: 1.16,
  letterSpacing: 0,
);
const TextStyle _displaySmall = TextStyle(
  fontSize: 36,
  fontWeight: FontWeight.w400,
  fontFamily: 'Roboto',
  height: 1.22,
  letterSpacing: 0,
);
const TextStyle _headlineLarge = TextStyle(
  fontSize: 32,
  fontWeight: FontWeight.w400,
  fontFamily: 'Roboto',
  height: 1.25,
  letterSpacing: 0,
);
const TextStyle _headlineMedium = TextStyle(
  fontSize: 28,
  fontWeight: FontWeight.w400,
  fontFamily: 'Roboto',
  height: 1.29,
  letterSpacing: 0,
);
const TextStyle _headlineSmall = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w400,
  fontFamily: 'Roboto',
  height: 1.27,
  letterSpacing: 0,
);
const TextStyle _titleLarge = TextStyle(
  fontSize: 22,
  fontWeight: FontWeight.w400,
  fontFamily: 'Roboto',
  height: 1.27,
  letterSpacing: 0,
);
const TextStyle _titleMedium = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w500,
  fontFamily: 'Roboto',
  height: 1.5,
  letterSpacing: 0,
);
const TextStyle _titleSmall = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  fontFamily: 'Roboto',
  height: 1.43,
  letterSpacing: 0,
);
const TextStyle _bodyLarge = TextStyle(
  fontSize: 16,
  fontWeight: FontWeight.w400,
  fontFamily: 'Roboto',
  height: 1.5,
  letterSpacing: 0.03,
);
const TextStyle _bodyMedium = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w400,
  fontFamily: 'Roboto',
  height: 1.43,
  letterSpacing: 0,
);
const TextStyle _bodySmall = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w400,
  fontFamily: 'Roboto',
  height: 1.33,
  letterSpacing: 0,
);
const TextStyle _labelLarge = TextStyle(
  fontSize: 14,
  fontWeight: FontWeight.w500,
  fontFamily: 'Roboto',
  height: 1.43,
  letterSpacing: 0,
);
const TextStyle _labelMedium = TextStyle(
  fontSize: 12,
  fontWeight: FontWeight.w500,
  fontFamily: 'Roboto',
  height: 1.33,
  letterSpacing: 0.04,
);
const TextStyle _labelSmall = TextStyle(
  fontSize: 11,
  fontWeight: FontWeight.w500,
  fontFamily: 'Roboto',
  height: 1.45,
  letterSpacing: 0.05,
);
