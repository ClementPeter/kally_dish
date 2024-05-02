import 'package:flutter/material.dart';
import 'package:kally_dish/ui/extensions/app_typography.dart';
import 'package:kally_dish/ui/extensions/pallete.dart';

//Easily call the extension w/o referencing context on each instance
extension BuildContextExtension on BuildContext {
  //Getter to always access the "Theme.of(context)"
  ThemeData get theme => Theme.of(this);

  AppTypography? get typography => theme.extension<AppTypography>();
  Pallete? get pallete => theme.extension<Pallete>();
}
