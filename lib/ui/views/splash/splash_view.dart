import 'package:flutter/material.dart';
import 'package:kally_dish/ui/common/app_images.dart';
import 'package:kally_dish/ui/views/splash/widgets.dart/curved_clipper.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_svg/svg.dart';
import 'splash_viewmodel.dart';

class SplashView extends StackedView<SplashViewModel> {
  const SplashView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    SplashViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Column(
        children: [
          Align(
            alignment: Alignment.topLeft,
            child: SvgPicture.asset(AppImages.blobOne),
          ),
          Image.asset(AppImages.kallyDishLogo),
          Expanded(
            child: ClipPath(
              clipper: CurvedShapeClipper(),
              child: Image.asset(
                AppImages.splashImage,
                fit: BoxFit.cover,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  SplashViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      SplashViewModel();
}
