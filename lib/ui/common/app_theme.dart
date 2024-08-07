import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kally_dish/ui/common/app_colors.dart';
import 'package:kally_dish/ui/common/app_text_style.dart';
import 'package:kally_dish/ui/extensions/app_typography.dart';
import 'package:kally_dish/ui/extensions/pallete.dart';

class AppThemes {
  //Light theme
  static get lightTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: AppColors.white,
      primaryColor: AppColors.primary6,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary6,
        brightness: Brightness.light,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: AppColors.primary6),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: AppTextStyles.labelRegular16.copyWith(
          color: AppColors.gray9,
        ),
        labelStyle: AppTextStyles.labelRegular12.copyWith(
          color: AppColors.gray9,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: const BorderSide(
            color: AppColors.gray6,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: BorderSide(
            width: 2.w,
            color: AppColors.primary6,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: const BorderSide(
            color: AppColors.primary6,
          ),
        ),
      ),
      extensions: [
        AppTypography(
          headlineBold28: AppTextStyles.headlineBold28,
          headlineBold24: AppTextStyles.headlineBold24,
          headlineBold22: AppTextStyles.headlineBold22,
          titleRegular16: AppTextStyles.titleRegular16,
          titleBold16: AppTextStyles.titleBold16,
          labelRegular12: AppTextStyles.labelRegular12,
          labelMedium16: AppTextStyles.labelMedium16,
          labelRegular14: AppTextStyles.labelRegular14,
          labelRegular16: AppTextStyles.labelRegular16,
        ),
        const Pallete(
          gray1: AppColors.gray1,
          gray6: AppColors.gray6,
          gray7: AppColors.gray7,
          gray8: AppColors.gray8,
          gray9: AppColors.gray9,
          gray11: AppColors.gray11,
          primary6: AppColors.primary6,
          primary11: AppColors.primary11,
          gray12: AppColors.gray12,
          gray13: AppColors.grey13,
          redShade: AppColors.redShade,
          popUpBg: AppColors.popUpBg,
          barrierColor: AppColors.barrierColor,
          iconBackground2: AppColors.iconBackground2,
          iconBackground3: AppColors.iconBackground3,
          orangeShade: AppColors.orangeShade,
          iconBackground: AppColors.iconBackground,
          white: AppColors.white,
          black: AppColors.black,
        )
      ],
    );
  }

  //Dark Theme
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      primaryColor: AppColors.primary6,
      colorScheme: ColorScheme.fromSeed(
        seedColor: AppColors.primary6,
        brightness: Brightness.dark,
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: AppColors.primary11,
        elevation: 0,
        centerTitle: true,
        iconTheme: IconThemeData(color: Colors.black),
      ),
      textSelectionTheme:
          const TextSelectionThemeData(cursorColor: AppColors.primary6),
      inputDecorationTheme: InputDecorationTheme(
        hintStyle: AppTextStyles.titleRegular16.copyWith(
          color: AppColors.gray9,
        ),
        labelStyle: AppTextStyles.labelRegular12.copyWith(
          color: AppColors.gray9,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: const BorderSide(
            color: AppColors.gray6,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: BorderSide(
            width: 2.w,
            color: AppColors.primary6,
          ),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(4.r),
          borderSide: const BorderSide(
            color: AppColors.primary6,
          ),
        ),
      ),
      extensions: <ThemeExtension<dynamic>>[
        AppTypography(
          headlineBold28: AppTextStyles.headlineBold28,
          headlineBold24: AppTextStyles.headlineBold24,
          headlineBold22: AppTextStyles.headlineBold22,
          titleRegular16: AppTextStyles.titleRegular16,
          titleBold16: AppTextStyles.titleBold16,
          labelRegular12: AppTextStyles.labelRegular12,
          labelMedium16: AppTextStyles.labelMedium16,
          labelRegular14: AppTextStyles.labelRegular14,
          labelRegular16: AppTextStyles.labelRegular16,
        ),
        const Pallete(
          gray1: AppColors.gray1,
          gray6: AppColors.gray6,
          gray7: AppColors.gray7,
          gray8: AppColors.gray8,
          gray9: AppColors.gray9,
          gray11: AppColors.gray11,
          primary6: AppColors.primary6,
          primary11: AppColors.primary11,
          gray12: AppColors.gray12,
          gray13: AppColors.grey13,
          redShade: AppColors.redShade,
          popUpBg: AppColors.popUpBg,
          barrierColor: AppColors.barrierColor,
          iconBackground2: AppColors.iconBackground2,
          iconBackground3: AppColors.iconBackground3,
          orangeShade: AppColors.orangeShade,
          iconBackground: AppColors.iconBackground,
          white: AppColors.white,
          black: AppColors.black,
        ),
      ],
    );
  }
}
