import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kally_dish/generated/l10n.dart';
import 'package:kally_dish/ui/common/ui_helpers.dart';
import 'package:kally_dish/ui/extensions/extension.dart';
import 'package:kally_dish/ui/widgets/common/primary_button/primary_button.dart';
import 'package:stacked/stacked.dart';
import 'register_success_viewmodel.dart';

class RegisterSuccessView extends StackedView<RegisterSuccessViewModel> {
  const RegisterSuccessView({Key? key}) : super(key: key);

  @override
  Widget builder(
    BuildContext context,
    RegisterSuccessViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 30, horizontal: 16),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            verticalSpaceMassive,
            Align(
              alignment: Alignment.center,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    '🎉',
                    style: TextStyle(fontSize: 100),
                  ),
                  Text(
                    S.current.registration_successful,
                    style: context.typography?.headlineBold24
                        ?.copyWith(color: context.pallete?.gray11),
                  ),
                  Text(
                    S.current.click_on_proceed,
                    textAlign: TextAlign.center,
                    style: context.typography?.titleRegular16?.copyWith(
                      color: context.pallete?.gray8,
                    ),
                  ),
                ],
              ),
            ),
            verticalSpace(100.h),
            //Proceed Button
            PrimaryButton(
              buttonText: S.current.proceed,
              onTap: () => viewModel.proceedToLogin(),
            ),
            verticalSpace(10.h),
          ],
        ),
      ),
    );
  }

  @override
  RegisterSuccessViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RegisterSuccessViewModel();
}
