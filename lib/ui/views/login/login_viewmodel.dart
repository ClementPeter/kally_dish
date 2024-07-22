import 'package:flutter/material.dart';
import 'package:kally_dish/app/app.locator.dart';
import 'package:kally_dish/app/app.router.dart';
import 'package:kally_dish/enums/snackbar_type.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class LoginViewModel extends FormViewModel {
  final NavigationService _navigationService = locator<NavigationService>();
  final SnackbarService _snackbarService = locator<SnackbarService>();

  bool hidePassword = true;

  String? loginEmailValidatorValue;
  String? loginPasswordValidatorValue;

  void toggleShowPassword() {
    hidePassword = !hidePassword;
    rebuildUi();
  }

  void showLoginSnackBar(String? value) {
    _snackbarService.showCustomSnackBar(
      message: value!,
      variant: SnackbarType.custom,
      duration: const Duration(seconds: 1),
    );
    _snackbarService.closeSnackbar();
  }

  void navigateToRegister() {
    _navigationService.navigateToRegisterView();
  }

  void login() async {
    setBusy(true);
    await Future.delayed(const Duration(milliseconds: 1500));
    setBusy(false);
    debugPrint('Login');
  }
}
