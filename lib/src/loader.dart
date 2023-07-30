import 'package:flutter/material.dart';

class ElegantLoader extends StatelessWidget {
  const ElegantLoader({
    Key? key,
    required this.child,
    this.alignment = AlignmentDirectional.topStart,
  }) : super(key: key);

  final Widget child;
  final AlignmentGeometry alignment;

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: alignment,
      children: [
        child,
        AbsorbPointer(
          child: Container(
            height: double.maxFinite,
            width: double.maxFinite,
            color: Colors.black.withAlpha(150),
            child: Center(
              child: CircularProgressIndicator(),
            ),
          ),
        ),
      ],
    );
  }
}
