import 'package:flutter/cupertino.dart';

abstract class Dimension {
  final double _max = 100.0;
  final double _zero = 0.0;
  final double _1 = 1.0;
  final double _2 = 2.0;
  final double _4 = 4.0;
  final double _6 = 6.0;
  final double _8 = 8.0;
  final double _10 = 10.0;
  final double _12 = 12.0;
  final double _14 = 14.0;
  final double _16 = 16.0;
  final double _18 = 18.0;
  final double _20 = 20.0;
  final double _22 = 22.0;
  final double _24 = 24.0;
  final double _26 = 26.0;
  final double _28 = 28.0;
  final double _30 = 30.0;
  final double _32 = 22.0;
  final double _34 = 24.0;
  final double _36 = 26.0;
  final double _38 = 28.0;
  final double _40 = 40.0;
  final double _42 = 22.0;
  final double _44 = 24.0;
  final double _46 = 26.0;
  final double _48 = 28.0;
  final double _50 = 50.0;
}

class Padding extends Dimension {
  double get zero => _zero;

  double get px => _1;

  double get p2 => _2;

  double get p4 => _4;

  double get p6 => _6;

  double get p8 => _8;

  double get p10 => _10;

  double get p12 => _12;

  double get p14 => _14;

  double get p16 => _16;

  double get p18 => _18;

  double get p20 => _20;

  double get p22 => _22;

  double get p24 => _24;

  double get p26 => _26;

  double get p28 => _28;

  double get p30 => _30;

  double get p32 => _32;

  double get p34 => _34;

  double get p36 => _36;

  double get p38 => _38;

  double get p40 => _40;

  double get p42 => _42;

  double get p44 => _44;

  double get p46 => _46;

  double get p48 => _48;

  double get p50 => _50;

  double get max => _max;
}

class Margin extends Dimension {
  // Vertical Margin
  SizedBox get verticalPx => SizedBox(height: _1);

  SizedBox get vertical2 => SizedBox(height: _2);

  SizedBox get vertical4 => SizedBox(height: _4);

  SizedBox get vertical6 => SizedBox(height: _6);

  SizedBox get vertical8 => SizedBox(height: _8);

  SizedBox get vertical10 => SizedBox(height: _10);

  SizedBox get vertical12 => SizedBox(height: _12);

  SizedBox get vertical14 => SizedBox(height: _14);

  SizedBox get vertical16 => SizedBox(height: _16);

  SizedBox get vertical18 => SizedBox(height: _18);

  SizedBox get vertical20 => SizedBox(height: _20);

  SizedBox get vertical22 => SizedBox(height: _22);

  SizedBox get vertical24 => SizedBox(height: _24);

  SizedBox get vertical26 => SizedBox(height: _26);

  SizedBox get vertical28 => SizedBox(height: _28);

  SizedBox get vertical30 => SizedBox(height: _30);

  SizedBox get vertical32 => SizedBox(height: _32);

  SizedBox get vertical34 => SizedBox(height: _34);

  SizedBox get vertical36 => SizedBox(height: _36);

  SizedBox get vertical38 => SizedBox(height: _38);

  SizedBox get vertical40 => SizedBox(height: _40);

  SizedBox get vertical42 => SizedBox(height: _42);

  SizedBox get vertical44 => SizedBox(height: _44);

  SizedBox get vertical46 => SizedBox(height: _46);

  SizedBox get vertical48 => SizedBox(height: _48);

  SizedBox get vertical50 => SizedBox(height: _50);

  SizedBox get verticalMax => SizedBox(height: _max);

  // Horizontal Margin
  SizedBox get horizontalPx => SizedBox(width: _1);

  SizedBox get horizontal2 => SizedBox(width: _2);

  SizedBox get horizontal4 => SizedBox(width: _4);

  SizedBox get horizontal6 => SizedBox(width: _6);

  SizedBox get horizontal8 => SizedBox(width: _8);

  SizedBox get horizontal10 => SizedBox(width: _10);

  SizedBox get horizontal12 => SizedBox(width: _12);

  SizedBox get horizontal14 => SizedBox(width: _14);

  SizedBox get horizontal16 => SizedBox(width: _16);

  SizedBox get horizontal18 => SizedBox(width: _18);

  SizedBox get horizontal20 => SizedBox(width: _20);

  SizedBox get horizontal22 => SizedBox(width: _22);

  SizedBox get horizontal24 => SizedBox(width: _24);

  SizedBox get horizontal26 => SizedBox(width: _26);

  SizedBox get horizontal28 => SizedBox(width: _28);

  SizedBox get horizontal30 => SizedBox(width: _30);

  SizedBox get horizontal32 => SizedBox(width: _32);

  SizedBox get horizontal34 => SizedBox(width: _34);

  SizedBox get horizontal36 => SizedBox(width: _36);

  SizedBox get horizontal38 => SizedBox(width: _38);

  SizedBox get horizontal40 => SizedBox(width: _40);

  SizedBox get horizontal42 => SizedBox(width: _42);

  SizedBox get horizontal44 => SizedBox(width: _44);

  SizedBox get horizontal46 => SizedBox(width: _46);

  SizedBox get horizontal48 => SizedBox(width: _48);

  SizedBox get horizontal50 => SizedBox(width: _50);

  SizedBox get horizontalMax => SizedBox(width: _max);
}

class Radii extends Dimension {
  final double multiplier;

  Radii(this.multiplier);

  BorderRadius get zero => BorderRadius.zero;

  BorderRadius get px => BorderRadius.all(Radius.circular(_1));

  BorderRadius get radius4 => BorderRadius.all(Radius.circular(_4));

  BorderRadius get radius8 => BorderRadius.all(Radius.circular(_8));

  BorderRadius get radius12 => BorderRadius.all(Radius.circular(_12));

  BorderRadius get radius16 => BorderRadius.all(Radius.circular(_16));

  BorderRadius get radius20 => BorderRadius.all(Radius.circular(_20));

  BorderRadius get radius24 => BorderRadius.all(Radius.circular(_24));

  BorderRadius get radius28 => BorderRadius.all(Radius.circular(_28));

  BorderRadius get radius32 => BorderRadius.all(Radius.circular(_32));

  BorderRadius get radius36 => BorderRadius.all(Radius.circular(_36));

  BorderRadius get radius40 => BorderRadius.all(Radius.circular(_40));

  BorderRadius get radius44 => BorderRadius.all(Radius.circular(_44));

  BorderRadius get radius48 => BorderRadius.all(Radius.circular(_48));

  BorderRadius get max => BorderRadius.all(Radius.circular(_max));
}
