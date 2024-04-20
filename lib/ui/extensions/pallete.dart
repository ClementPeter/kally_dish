import 'package:flutter/material.dart';

// Pallete class is used to structure our App Colors for easy usability
// with ThemeExtensions and for scalability as well
@immutable
class Pallete extends ThemeExtension<Pallete> {
  final Color? gray1;
  final Color? gray6;
  final Color? gray7;
  final Color? gray8;
  final Color? gray9;
  final Color? gray11;
  final Color? gray12;
  final Color? gray13;
  final Color? primary6;
  final Color? primary11;
  final Color? redShade;
  final Color? popUpBg;
  final Color? orangeShade;
  final Color? barrierColor;
  final Color? iconBackground;
  final Color? iconBackground2;
  final Color? iconBackground3;
  final Color? white;
  final Color? black;

  const Pallete({
    required this.gray1,
    required this.gray6,
    required this.gray7,
    required this.gray8,
    required this.gray9,
    required this.gray11,
    required this.gray12,
    required this.gray13,
    required this.primary6,
    required this.primary11,
    required this.redShade,
    required this.popUpBg,
    required this.orangeShade,
    required this.barrierColor,
    required this.iconBackground,
    required this.iconBackground2,
    required this.iconBackground3,
    required this.white,
    required this.black,
  });

  @override
  ThemeExtension<Pallete> copyWith({
    Color? gray1,
    Color? gray6,
    Color? gray7,
    Color? gray8,
    Color? gray9,
    Color? gray11,
    Color? gray12,
    Color? gray13,
    Color? primary6,
    Color? primary11,
    Color? redShade,
    Color? popUpBg,
    Color? barrierColor,
    Color? iconBackground2,
    Color? iconBackground3,
    Color? orangeShade,
    Color? iconBackground,
    Color? white,
    Color? black,
  }) {
    return Pallete(
      gray1: gray1 ?? this.gray1,
      gray6: gray6 ?? this.gray6,
      gray7: gray7 ?? this.gray7,
      gray8: gray8 ?? this.gray8,
      gray9: gray9 ?? this.gray8,
      gray11: gray11 ?? this.gray11,
      gray12: gray12 ?? this.gray12,
      gray13: gray13 ?? this.gray13,
      primary6: primary6 ?? this.primary6,
      primary11: primary11 ?? this.primary11,
      redShade: redShade ?? this.redShade,
      popUpBg: popUpBg ?? this.popUpBg,
      barrierColor: barrierColor ?? this.barrierColor,
      iconBackground2: iconBackground2 ?? this.iconBackground2,
      iconBackground3: iconBackground3 ?? this.iconBackground3,
      orangeShade: orangeShade ?? this.orangeShade,
      iconBackground: iconBackground ?? this.iconBackground,
      white: white ?? this.white,
      black: black ?? this.black,
    );
  }

  @override
  ThemeExtension<Pallete> lerp(
      covariant ThemeExtension<Pallete>? other, double t) {
    if (other is! Pallete) {
      return this;
    }
    return Pallete(
      gray1: Color.lerp(gray1, other.gray1, t),
      gray6: Color.lerp(gray6, other.gray6, t),
      gray7: Color.lerp(gray7, other.gray7, t),
      gray8: Color.lerp(gray8, other.gray8, t),
      gray9: Color.lerp(gray9, other.gray9, t),
      gray11: Color.lerp(gray11, other.gray11, t),
      gray12: Color.lerp(gray12, other.gray12, t),
      gray13: Color.lerp(gray13, other.gray13, t),
      primary6: Color.lerp(primary6, other.primary6, t),
      primary11: Color.lerp(primary11, other.primary6, t),
      redShade: Color.lerp(redShade, other.redShade, t),
      popUpBg: Color.lerp(popUpBg, other.popUpBg, t),
      orangeShade: Color.lerp(orangeShade, other.orangeShade, t),
      barrierColor: Color.lerp(barrierColor, other.barrierColor, t),
      iconBackground: Color.lerp(iconBackground, other.iconBackground, t),
      iconBackground2: Color.lerp(iconBackground2, other.iconBackground2, t),
      iconBackground3: Color.lerp(iconBackground3, other.iconBackground3, t),
      white: Color.lerp(white, other.white, t),
      black: Color.lerp(black, other.black, t),
    );
  }
}
