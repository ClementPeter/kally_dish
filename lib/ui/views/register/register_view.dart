import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kally_dish/generated/l10n.dart';
import 'package:kally_dish/ui/common/app_images.dart';
import 'package:kally_dish/ui/common/ui_helpers.dart';
import 'package:kally_dish/ui/extensions/extension.dart';
import 'package:kally_dish/ui/utilities/validation.dart';
import 'package:kally_dish/ui/views/register/register_view.form.dart';
import 'package:kally_dish/ui/widgets/common/primary_button/primary_button.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import 'register_viewmodel.dart';

@FormView(
  fields: [
    FormTextField(name: 'firstName'),
    FormTextField(name: 'lastName'),
    FormTextField(name: 'registerEmail'),
    FormTextField(name: 'registerPassword'),
  ],
)
class RegisterView extends StackedView<RegisterViewModel> with $RegisterView {
  const RegisterView({Key? key}) : super(key: key);

  static final GlobalKey<FormState> _registerFormKey = GlobalKey<FormState>();

  @override
  Widget builder(
    BuildContext context,
    RegisterViewModel viewModel,
    Widget? child,
  ) {
    return Scaffold(
      backgroundColor: Theme.of(context).colorScheme.background,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(
            left: sidePadding,
            right: sidePadding,
            bottom: sidePadding,
          ),
          child: Form(
            key: _registerFormKey,
            child: Column(
              children: [
                Image.asset(
                  AppImages.kallyDishLogo,
                  height: 80.h,
                ),
                verticalSpace(5.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.current.sign_up,
                        style: context.typography?.headlineBold28
                            ?.copyWith(color: context.pallete?.gray11),
                      ),
                      verticalSpace(4.h),
                      Text(
                        S.current.kindly_fill_the_form,
                        style: context.typography?.titleRegular16
                            ?.copyWith(color: context.pallete?.gray8),
                      ),
                      verticalSpace(20.h),
                      //first name TextFormField
                      TextFormField(
                        controller: firstNameController,
                        focusNode: firstNameFocusNode,
                        validator: (value) => Validation.validateField(value),
                        autofillHints: const [AutofillHints.email],
                        keyboardType: TextInputType.name,
                        keyboardAppearance: Brightness.dark,
                        decoration: InputDecoration(
                          labelText: S.current.first_name,
                          hintText: S.current.enter_your_first_name,
                        ),
                      ),
                      verticalSpace(20.h),
                      //last name TextFormField
                      TextFormField(
                        controller: lastNameController,
                        validator: (value) => Validation.validateField(value),
                        autofillHints: const [AutofillHints.email],
                        keyboardType: TextInputType.name,
                        keyboardAppearance: Brightness.dark,
                        decoration: InputDecoration(
                          labelText: S.current.last_name,
                          hintText: S.current.enter_your_last_name,
                        ),
                      ),
                      verticalSpace(20.h),
                      // Email TextFormField
                      TextFormField(
                        controller: registerEmailController,
                        validator: (value) => Validation.validateEmail(value),
                        autofillHints: const [AutofillHints.email],
                        keyboardType: TextInputType.emailAddress,
                        keyboardAppearance: Brightness.dark,
                        decoration: InputDecoration(
                          labelText: S.current.email_address,
                          hintText: S.current.enter_your_email,
                        ),
                      ),
                      // Password TextFormField
                      verticalSpace(20.h),
                      TextFormField(
                        controller: registerPasswordController,
                        validator: (value) =>
                            Validation.validatePassword(value),
                        autofillHints: const [AutofillHints.creditCardType],
                        obscureText: true,
                        keyboardType: TextInputType.emailAddress,
                        keyboardAppearance: Brightness.dark,
                        decoration: InputDecoration(
                          labelText: S.current.password,
                          hintText: S.current.enter_your_password,
                        ),
                      ),
                      verticalSpace(80.h),
                    ],
                  ),
                ),

                //Login Button
                PrimaryButton(
                  buttonText: S.current.sign_up,
                  onTap: () {
                    if (_registerFormKey.currentState?.validate() == false) {
                      print('Oya now come and pass lemme see ??');
                    }
                  },
                ),
                verticalSpace(10.h),
                Text.rich(
                  TextSpan(
                    text: S.current.already_have_an_account,
                    style: context.typography?.titleRegular16?.copyWith(
                      color: context.pallete?.gray8,
                      fontSize: 14.sp,
                    ),
                    children: [
                      const TextSpan(text: " "),
                      TextSpan(
                        text: S.current.register,
                        style: context.typography?.titleBold16?.copyWith(
                          color: context.pallete?.primary6,
                          fontSize: 14.sp,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            debugPrint('navigate to login');
                            viewModel.navigateToLogin();
                          },
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }

  @override
  RegisterViewModel viewModelBuilder(
    BuildContext context,
  ) =>
      RegisterViewModel();

  @override
  void onDispose(RegisterViewModel viewModel) {
    debugPrint('onDispose called');
    super.onDispose(viewModel);
    disposeForm();
  }
}
