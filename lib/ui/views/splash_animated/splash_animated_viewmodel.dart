import 'package:kally_dish/app/app.locator.dart';
import 'package:kally_dish/app/app.router.dart';
import 'package:stacked/stacked.dart';
import 'package:stacked_services/stacked_services.dart';

class SplashAnimatedViewModel extends BaseViewModel {
  final _navigationService = locator<NavigationService>();

  // Place anything here that needs to happen before we get into the application
  Future runSplashLogic() async {
    await Future.delayed(const Duration(seconds: 3));

    _navigationService.replaceWithOnboardingView();
  }
}
