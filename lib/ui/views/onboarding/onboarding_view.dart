import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:kally_dish/generated/l10n.dart';
import 'package:kally_dish/ui/common/app_images.dart';
import 'package:kally_dish/ui/extensions/extension.dart';
import 'package:kally_dish/ui/widgets/common/primary_button/primary_button.dart';
import 'package:stacked/stacked.dart';
import 'onboarding_viewmodel.dart';

//Onboarding view
class OnboardingView extends StackedView<OnboardingViewModel> {
  const OnboardingView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    OnboardingViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: context.pallete?.white,
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(height: 50.h),
            Image.asset(
              AppImages.kallyDishLogo,
              height: 72.h,
            ),
            SizedBox(height: 32.h),
            SizedBox(
              height: 450,
              child: PageView.builder(
                onPageChanged: viewModel.setIndex,
                itemCount: viewModel.onboardingData.length,
                itemBuilder: (context, index) {
                  final onboardingData = viewModel.onboardingData[index];
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(
                          onboardingData.image,
                          height: 236.h,
                          width: 246.w,
                        ),
                        SizedBox(height: 35.h),
                        Text(
                          onboardingData.title,
                          textAlign: TextAlign.center,
                          style: context.typography?.headlineBold24?.copyWith(
                            color: context.pallete?.gray11,
                          ),
                        ),
                        SizedBox(height: 8.h),
                        Text(
                          onboardingData.subtitle,
                          textAlign: TextAlign.center,
                          style: context.typography?.titleRegular16
                              ?.copyWith(color: context.pallete?.gray7),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            const Spacer(),
            DotsIndicator(
              dotsCount: viewModel.onboardingData.length,
              position: viewModel.currentIndex,
              decorator: DotsDecorator(
                color: context.theme.primaryColor.withOpacity(0.1),
                activeColor: context.theme.primaryColor,
                size: Size(20.w, 3.h),
                activeSize: Size(20.w, 3.h),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
                activeShape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5.0)),
              ),
            ),
            SizedBox(height: 24.h),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 16.w),
              child: PrimaryButton(
                buttonText: 'Get Started',
                onTap: viewModel.getStarted,
              ),
            ),
            SizedBox(height: 10.h),
          ],
        ),
      ),
    );
  }

  @override
  OnboardingViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      OnboardingViewModel();
}
