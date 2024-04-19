import 'package:flutter/material.dart';

// Typography class is used to structure our App TextStyle for easy usability
// with ThemeExtensions and for scalability as well

class AppTypography extends ThemeExtension<AppTypography> {
  final TextStyle? headlineBold28;
  final TextStyle? headlineBold24;
  final TextStyle? headlineBold22;
  final TextStyle? titleRegular16;

  AppTypography({
    required this.headlineBold28,
    required this.headlineBold24,
    required this.headlineBold22,
    required this.titleRegular16,
  });

  @override
  ThemeExtension<AppTypography> copyWith(
    TextStyle? headlineBold28,
    TextStyle? headlineBold24,
    TextStyle? headlineBold22,
  ) {
    return AppTypography(
        headlineBold28: headlineBold28,
        headlineBold24: headlineBold24,
        headlineBold22: headlineBold22,
        titleRegular16: titleRegular16);
  }

  @override
  ThemeExtension<AppTypography> lerp(AppTypography? other, double t) {
    if (other is! AppTypography) {
      return this;
    }
    return AppTypography(
      headlineBold28: TextStyle.lerp(headlineBold28, other.headlineBold28, t),
      headlineBold22: TextStyle.lerp(headlineBold24, other.headlineBold24, t),
      headlineBold24: TextStyle.lerp(headlineBold22, other.headlineBold22, t),
    );
  }
}
