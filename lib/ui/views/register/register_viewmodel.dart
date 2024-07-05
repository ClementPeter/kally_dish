import 'package:kally_dish/app/app.locator.dart';
import 'package:kally_dish/app/app.router.dart';
import 'package:kally_dish/enums/snackbar_type.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RegisterViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  final SnackbarService _snackbarService = locator<SnackbarService>();

  bool hidePassword = true;

  String? firstNameValidatorValue;
  String? lastNameValidatorValue;
  String? registerEmailValidatorValue;
  String? registerPasswordValidatorValue;

  void toggleShowPassword() {
    hidePassword = !hidePassword;
    rebuildUi();
  }

  void showRegisterSnackBar(String? value) {
    _snackbarService.showCustomSnackBar(
      message: value!,
      variant: SnackbarType.custom,
      duration: const Duration(seconds: 1),
    );
    _snackbarService.closeSnackbar();
  }

  void register() {
    setBusy(true);
    Future.delayed(const Duration(seconds: 1500));
    _navigationService.replaceWithRegisterSuccessView();
    setBusy(false);
  }

  void proceedToLogin() {
    _navigationService.navigateToLoginView();
  }
}
