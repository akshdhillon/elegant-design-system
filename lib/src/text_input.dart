import 'package:elegant/src/ui_helper/constant.dart';
import 'package:elegant/src/ui_helper/padding.dart';
import 'package:elegant/utils/double_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

enum _FieldType { regular, prefix, suffix }

class ElegantTextInputField extends StatelessWidget {
  final _FieldType _type;
  final String? hint;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final IconData icon;
  final VoidCallback? onIconPressed;
  final bool enabled;
  final TextAlign textAlign;
  final bool spaceyLetters;

  const ElegantTextInputField({
    super.key,
    this.hint,
    this.onChanged,
    this.validator,
    this.controller,
    this.enabled = true,
    this.textAlign = TextAlign.center,
    this.spaceyLetters = false,
  })  : _type = _FieldType.regular,
        icon = Icons.circle,
        onIconPressed = null;

  const ElegantTextInputField.prefix({
    super.key,
    this.hint,
    this.onChanged,
    this.validator,
    this.controller,
    required this.icon,
    this.enabled = true,
    this.textAlign = TextAlign.center,
    this.spaceyLetters = false,
  })  : _type = _FieldType.prefix,
        onIconPressed = null;

  const ElegantTextInputField.suffix({
    super.key,
    this.hint,
    this.onChanged,
    this.validator,
    this.controller,
    required this.icon,
    required this.onIconPressed,
    this.enabled = true,
    this.textAlign = TextAlign.center,
    this.spaceyLetters = false,
  }) : _type = _FieldType.suffix;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextFormField(
      onChanged: onChanged,
      enabled: enabled,
      validator: validator,
      controller: controller,
      style: theme.textTheme.bodyLarge?.copyWith(
        letterSpacing: spaceyLetters ? 2 : null,
      ),
      textAlign: textAlign,
      decoration: InputDecoration(
        contentPadding: theme.padding.p16.horizontal,
        constraints: BoxConstraints(
          minHeight: kDefaultTextFieldHeight,
          maxHeight: kDefaultTextFieldHeight * 2,
        ),
        // isDense: true,
        filled: true,
        fillColor: theme.colorScheme.surfaceVariant,
        border: OutlineInputBorder(
          borderRadius: theme.radius.max,
          borderSide: BorderSide.none,
        ),
        hintText: hint,
        hintStyle: theme.textTheme.bodyLarge?.copyWith(
          color: theme.colorScheme.onSurfaceVariant,
        ),
        prefixIconConstraints: BoxConstraints(minWidth: 56),
        prefixIcon: _type != _FieldType.prefix
            ? _type != _FieldType.regular
                ? SizedBox()
                : null
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Icon(icon),
              ),
        suffixIconConstraints: BoxConstraints(minWidth: 56),
        suffixIcon: _type != _FieldType.suffix
            ? _type != _FieldType.regular
                ? SizedBox()
                : null
            : Material(
                type: MaterialType.transparency,
                clipBehavior: Clip.antiAlias,
                shape: StadiumBorder(),
                child: InkWell(
                  onTap: onIconPressed,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Icon(icon),
                  ),
                ),
              ),
      ),
    );
  }
}

class ElegantNumberInputField extends StatelessWidget {
  final _FieldType _type;
  final String? hint;
  final ValueChanged<String>? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final IconData icon;
  final VoidCallback? onIconPressed;
  final int maxLength;
  final bool enabled;
  final TextAlign textAlign;

  const ElegantNumberInputField({
    super.key,
    this.hint,
    this.onChanged,
    this.validator,
    this.controller,
    required this.maxLength,
    this.enabled = true,
    this.textAlign = TextAlign.center,
  })  : _type = _FieldType.regular,
        icon = Icons.circle,
        onIconPressed = null;

  const ElegantNumberInputField.prefix({
    super.key,
    this.hint,
    this.onChanged,
    this.validator,
    this.controller,
    required this.icon,
    required this.maxLength,
    this.enabled = true,
    this.textAlign = TextAlign.center,
  })  : _type = _FieldType.prefix,
        onIconPressed = null;

  const ElegantNumberInputField.suffix({
    super.key,
    this.hint,
    this.onChanged,
    this.validator,
    this.controller,
    required this.icon,
    required this.onIconPressed,
    required this.maxLength,
    this.enabled = true,
    this.textAlign = TextAlign.center,
  }) : _type = _FieldType.suffix;

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    return TextFormField(
      onChanged: onChanged,
      enabled: enabled,
      validator: validator,
      controller: controller,
      keyboardType: TextInputType.phone,
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
        LengthLimitingTextInputFormatter(maxLength),
      ],
      style: theme.textTheme.bodyLarge?.copyWith(letterSpacing: 2),
      textAlign: textAlign,
      decoration: InputDecoration(
        contentPadding: theme.padding.p16.horizontal,
        // contentPadding: EdgeInsets.only(
        //   left: _type == _FieldType.regular ? 16 : 0,
        //   right: _type == _FieldType.regular ? 16 : 0,
        // ),
        constraints: BoxConstraints(
          minHeight: kDefaultTextFieldHeight,
          maxHeight: kDefaultTextFieldHeight * 2,
        ),
        filled: true,
        fillColor: theme.colorScheme.surfaceVariant,
        border: OutlineInputBorder(
          borderRadius: theme.radius.max,
          borderSide: BorderSide.none,
        ),
        hintText: hint,
        hintStyle: theme.textTheme.bodyLarge?.copyWith(
          color: theme.colorScheme.onSurfaceVariant,
        ),
        prefixIconConstraints: BoxConstraints(minWidth: 56),
        prefixIcon: _type != _FieldType.prefix
            ? _type != _FieldType.regular
                ? SizedBox()
                : null
            : Padding(
                padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                child: Icon(icon),
              ),
        suffixIconConstraints: BoxConstraints(minWidth: 56),
        suffixIcon: _type != _FieldType.suffix
            ? _type != _FieldType.regular
                ? SizedBox()
                : null
            : Material(
                type: MaterialType.transparency,
                clipBehavior: Clip.antiAlias,
                shape: StadiumBorder(),
                child: InkWell(
                  onTap: onIconPressed,
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 12),
                    child: Icon(icon),
                  ),
                ),
              ),
      ),
    );
  }
}
