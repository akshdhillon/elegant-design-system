import 'package:elegant/elegant.dart';
import 'package:flutter/material.dart';

enum _ButtonType { normal, icon }

class ElegantFilledButton extends StatelessWidget {
  final VoidCallback onPressed;
  final String title;
  final bool enabled;
  final IconData iconData;
  final bool loading;
  final _ButtonType _type;

  const ElegantFilledButton({
    super.key,
    required this.onPressed,
    required this.title,
    this.enabled = true,
    this.loading = false,
  })  : _type = _ButtonType.normal,
        iconData = Icons.abc;

  const ElegantFilledButton.icon({
    super.key,
    required this.onPressed,
    required this.title,
    required this.iconData,
    this.enabled = true,
    this.loading = false,
  }) : _type = _ButtonType.icon;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    final foregroundColor =
        enabled || loading ? color.onPrimary : color.onSurface.withOpacity(0.38);

    final disabledColor = loading ? color.primary : color.onSurface.withOpacity(0.12);

    return MaterialButton(
      onPressed: enabled && !loading ? onPressed : null,
      height: defaultButtonHeight,
      minWidth: double.infinity,
      color: color.primary,
      disabledColor: disabledColor,
      splashColor: color.onPrimary.withOpacity(0.12),
      elevation: zero,
      highlightElevation: 0,
      shape: const StadiumBorder(),
      clipBehavior: Clip.antiAlias,
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: (loading && enabled) || loading
          ? SizedBox.square(
              dimension: v20,
              child: CircularProgressIndicator(
                color: color.onPrimary,
                strokeWidth: 3,
              ),
            )
          : Row(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (_type == _ButtonType.icon)
                  Icon(
                    Icons.add,
                    size: 20,
                    color: foregroundColor,
                  ),
                if (_type == _ButtonType.icon) SizedBox(width: v8),
                Flexible(
                  child: ElegantText.buttonTitleDefault(
                    title,
                    maxLines: 3,
                    textAlign: _type == _ButtonType.normal ? TextAlign.center : TextAlign.left,
                    color: foregroundColor,
                  ),
                ),
              ],
            ),
    );
  }
}

class ElegantOutlinedButton extends StatelessWidget {
  final VoidCallback onTap;
  final String title;
  final bool enabled;
  final IconData iconData;
  final _ButtonType _type;

  const ElegantOutlinedButton({
    super.key,
    required this.onTap,
    required this.title,
    this.enabled = true,
  })  : _type = _ButtonType.normal,
        iconData = Icons.abc;

  const ElegantOutlinedButton.icon({
    super.key,
    required this.onTap,
    required this.title,
    required this.iconData,
    this.enabled = true,
  }) : _type = _ButtonType.icon;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return MaterialButton(
      onPressed: enabled ? onTap : null,
      height: defaultButtonHeight,
      minWidth: double.infinity,
      elevation: zero,
      highlightElevation: zero,
      color: color.background,
      disabledColor: color.transparent,
      splashColor: color.primary.withOpacity(0.12),
      clipBehavior: Clip.antiAlias,
      shape: StadiumBorder(
        side: BorderSide(
          width: 1,
          color: enabled ? color.outline : color.onSurface.withOpacity(0.12),
        ),
      ),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (_type == _ButtonType.icon)
            Icon(
              Icons.add,
              size: 20,
              color: enabled ? color.primary : color.onSurface.withOpacity(0.38),
            ),
          if (_type == _ButtonType.icon) const SizedBox(width: v8),
          Flexible(
            child: ElegantText.buttonTitleDefault(
              title,
              maxLines: 3,
              textAlign: _type == _ButtonType.normal ? TextAlign.center : TextAlign.left,
              color: enabled ? color.primary : color.onSurface.withOpacity(0.38),
            ),
          ),
        ],
      ),
    );
  }
}

class ElegantTextButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final bool enabled;
  final IconData iconData;
  final _ButtonType _type;

  const ElegantTextButton({
    super.key,
    required this.onTap,
    required this.title,
    this.enabled = true,
  })  : _type = _ButtonType.normal,
        iconData = Icons.abc;

  const ElegantTextButton.icon({
    super.key,
    required this.onTap,
    required this.title,
    required this.iconData,
    this.enabled = true,
  }) : _type = _ButtonType.icon;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return MaterialButton(
      onPressed: enabled ? onTap : null,
      height: defaultButtonHeight,
      minWidth: double.infinity,
      elevation: zero,
      highlightElevation: zero,
      color: color.transparent,
      disabledColor: color.transparent,
      splashColor: color.primary.withOpacity(0.12),
      clipBehavior: Clip.antiAlias,
      shape: StadiumBorder(),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (_type == _ButtonType.icon)
            Icon(
              Icons.add,
              size: 20,
              color: enabled ? color.primary : color.onSurface.withOpacity(0.38),
            ),
          if (_type == _ButtonType.icon) const SizedBox(width: v8),
          Flexible(
            child: ElegantText.buttonTitleDefault(
              title,
              maxLines: 3,
              textAlign: _type == _ButtonType.normal ? TextAlign.center : TextAlign.left,
              color: enabled ? color.primary : color.onSurface.withOpacity(0.38),
            ),
          ),
        ],
      ),
    );
  }
}

class ElegantElevatedButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final bool enabled;
  final IconData iconData;
  final _ButtonType _type;

  const ElegantElevatedButton({
    super.key,
    required this.onTap,
    required this.title,
    this.enabled = true,
  })  : _type = _ButtonType.normal,
        iconData = Icons.abc;

  const ElegantElevatedButton.icon({
    super.key,
    required this.onTap,
    required this.title,
    required this.iconData,
    this.enabled = true,
  }) : _type = _ButtonType.icon;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return MaterialButton(
      onPressed: enabled ? onTap : null,
      height: defaultButtonHeight,
      minWidth: double.infinity,
      elevation: 3,
      highlightElevation: 3,
      color: color.surface1,
      disabledColor: color.onSurface.withOpacity(0.12),
      splashColor: color.primary.withOpacity(0.12),
      clipBehavior: Clip.antiAlias,
      shape: const StadiumBorder(),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (_type == _ButtonType.icon)
            Icon(
              Icons.add,
              size: 20,
              color: enabled ? color.primary : color.onSurface.withOpacity(0.38),
            ),
          if (_type == _ButtonType.icon) const SizedBox(width: v8),
          Flexible(
            child: ElegantText.buttonTitleDefault(
              title,
              maxLines: 3,
              textAlign: _type == _ButtonType.normal ? TextAlign.center : TextAlign.left,
              color: enabled ? color.primary : color.onSurface.withOpacity(0.38),
            ),
          ),
        ],
      ),
    );
  }
}

class ElegantTonalButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String title;
  final bool enabled;
  final IconData iconData;
  final _ButtonType _type;

  const ElegantTonalButton({
    super.key,
    required this.onTap,
    required this.title,
    this.enabled = true,
  })  : _type = _ButtonType.normal,
        iconData = Icons.abc;

  const ElegantTonalButton.icon({
    super.key,
    required this.onTap,
    required this.title,
    required this.iconData,
    this.enabled = true,
  }) : _type = _ButtonType.icon;

  @override
  Widget build(BuildContext context) {
    final color = Theme.of(context).colorScheme;

    return MaterialButton(
      onPressed: enabled ? onTap : null,
      height: defaultButtonHeight,
      minWidth: double.infinity,
      elevation: zero,
      highlightElevation: zero,
      color: color.secondaryContainer,
      disabledColor: color.onSurface.withOpacity(0.12),
      splashColor: color.onSecondaryContainer.withOpacity(0.12),
      clipBehavior: Clip.antiAlias,
      shape: const StadiumBorder(),
      materialTapTargetSize: MaterialTapTargetSize.shrinkWrap,
      child: Row(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          if (_type == _ButtonType.icon)
            Icon(
              Icons.add,
              size: 20,
              color: enabled ? color.onSecondaryContainer : color.onSurface.withOpacity(0.38),
            ),
          if (_type == _ButtonType.icon) const SizedBox(width: v8),
          Flexible(
            child: ElegantText.buttonTitleDefault(
              title,
              maxLines: 3,
              textAlign: _type == _ButtonType.normal ? TextAlign.center : TextAlign.left,
              color: enabled ? color.onSecondaryContainer : color.onSurface.withOpacity(0.38),
            ),
          ),
        ],
      ),
    );
  }
}
