import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:kally_dish/ui/common/app_images.dart';
import 'package:stacked/stacked.dart';
import 'package:flutter_svg/svg.dart';
import 'startup_viewmodel.dart';

class StartupView extends StackedView<StartupViewModel> {
  const StartupView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    StartupViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Align(
              alignment: Alignment.topLeft,
              child: SvgPicture.asset(AppImages.blobOne),
            ),
            Image.asset(AppImages.kallyDishLogo),
            Align(
              alignment: Alignment.bottomRight,
              child: SvgPicture.asset(AppImages.blobTwo),
            ),
          ],
        ),
      ),
    );
  }

  @override
  StartupViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      StartupViewModel();

  @override
  void onViewModelReady(StartupViewModel viewModel) => SchedulerBinding.instance
      .addPostFrameCallback((timeStamp) => viewModel.runStartupLogic());
}
