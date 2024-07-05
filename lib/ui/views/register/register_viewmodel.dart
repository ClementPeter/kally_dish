import 'package:kally_dish/app/app.locator.dart';
import 'package:kally_dish/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class RegisterViewModel extends BaseViewModel {
  final NavigationService _navigationService = locator<NavigationService>();

  bool hidePassword = false;

  void toggleShowPassword() {
    hidePassword = !hidePassword;
    rebuildUi();
  }

  void register() {
    _navigationService.replaceWithRegisterSuccessView();
  }

  void proceedToLogin() {
    _navigationService.navigateToLoginView();
  }
}
