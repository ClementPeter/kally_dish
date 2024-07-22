import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kally_dish/app/app.locator.dart';
import 'package:kally_dish/enums/snackbar_type.dart';
import 'package:kally_dish/ui/common/app_colors.dart';
import 'package:kally_dish/ui/common/app_images.dart';
import 'package:stacked_services/stacked_services.dart';

void setupAuthSnackbarUI() {
  final snackbarService = locator<SnackbarService>();

  snackbarService.registerCustomSnackbarConfig(
    variant: SnackbarType.custom,
    config: SnackbarConfig(
      backgroundColor: AppColors.paleRed,
      icon: SvgPicture.asset(AppImages.cancel),
      borderRadius: 30,
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      textColor: AppColors.redShade,
      snackPosition: SnackPosition.TOP,
    ),
  );
}
