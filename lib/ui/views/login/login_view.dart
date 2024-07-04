import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kally_dish/generated/l10n.dart';
import 'package:kally_dish/ui/common/app_images.dart';
import 'package:kally_dish/ui/extensions/extension.dart';
import 'package:kally_dish/ui/utilities/validation.dart';
import 'package:kally_dish/ui/views/login/login_view.form.dart';
import 'package:kally_dish/ui/widgets/common/primary_button/primary_button.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked/stacked_annotations.dart';
import '../../common/ui_helpers.dart';
import 'login_viewmodel.dart';

@FormView(fields: [
  FormTextField(name: 'loginEmail'),
  FormTextField(name: 'loginPassword')
])
class LoginView extends StackedView<LoginViewModel> with $LoginView {
  const LoginView({Key? key}) : super(key: key);

  static final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget builder(
    BuildContext context,
    LoginViewModel viewModel,
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
            key: _formKey,
            child: Column(
              children: [
                Image.asset(
                  AppImages.kallyDishLogo,
                  height: 80.h,
                ),
                verticalSpace(20.h),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        S.current.welcome,
                        style: context.typography?.headlineBold28
                            ?.copyWith(color: context.pallete?.gray11),
                      ),
                      verticalSpace(4.h),
                      Text(
                        S.current.please_sign_in_to_continue,
                        style: context.typography?.titleRegular16
                            ?.copyWith(color: context.pallete?.gray8),
                      ),
                      verticalSpace(24.h),
                      TextFormField(
                        controller: loginEmailController,
                        validator: (value) => Validation.validateEmail(value),
                        autofillHints: const [AutofillHints.email],
                        keyboardType: TextInputType.emailAddress,
                        keyboardAppearance: Brightness.dark,
                        decoration: InputDecoration(
                          labelText: S.current.email_address,
                          hintText: S.current.enter_your_email,
                        ),
                      ),
                      verticalSpace(24.h),
                      TextFormField(
                        controller: loginPasswordController,
                        validator: (value) =>
                            Validation.validatePassword(value),
                        autofillHints: const [AutofillHints.email],
                        obscureText: true,
                        keyboardType: TextInputType.emailAddress,
                        keyboardAppearance: Brightness.dark,
                        decoration: InputDecoration(
                          labelText: S.current.password,
                          hintText: S.current.enter_your_password,
                        ),
                      ),
                      verticalSpace(253.h),
                    ],
                  ),
                ),
                verticalSpace(4.h),
                PrimaryButton(
                  buttonText: S.current.login,
                  onTap: () {
                    if (_formKey.currentState?.validate() == false) {
                      print('Oya now come and pass lemme see ??');
                    }
                  },
                ),
                verticalSpace(16.h),
                Text.rich(
                  TextSpan(
                    text: S.current.dont_have_an_account,
                    style: context.typography?.titleRegular16?.copyWith(
                      color: context.pallete?.gray8,
                      fontSize: 14.sp,
                    ),
                    children: [
                      const TextSpan(text: " "),
                      TextSpan(
                        text: S.current.sign_up,
                        style: context.typography?.titleBold16?.copyWith(
                          color: context.pallete?.primary6,
                          fontSize: 14.sp,
                        ),
                        recognizer: TapGestureRecognizer()
                          ..onTap = () {
                            debugPrint('navigate to sign up');
                            viewModel.navigateToRegister;
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
  LoginViewModel viewModelBuilder(
    BuildContext context,
  ) {
    debugPrint('viewModelBuilder called');
    return LoginViewModel();
  }

  @override
  void onViewModelReady(LoginViewModel viewModel) {
    debugPrint('onViewModelReady called');
    super.onViewModelReady(viewModel);
    syncFormWithViewModel(viewModel);
  }

  @override
  void onDispose(LoginViewModel viewModel) {
    debugPrint('onDispose called');
    super.onDispose(viewModel);
    disposeForm();
  }
}
