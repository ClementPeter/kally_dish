import 'package:kally_dish/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:kally_dish/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:kally_dish/ui/views/home/home_view.dart';
import 'package:kally_dish/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:kally_dish/ui/views/splash_animated/splash_animated_view.dart';
import 'package:kally_dish/ui/views/onboarding/onboarding_view.dart';
import 'package:kally_dish/ui/views/login/login_view.dart';
import 'package:kally_dish/ui/views/register/register_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    AdaptiveRoute(page: HomeView),
    AdaptiveRoute(page: StartupView),
    AdaptiveRoute(page: SplashAnimatedView),
    AdaptiveRoute(page: OnboardingView),
    AdaptiveRoute(page: LoginView),
    AdaptiveRoute(page: RegisterView),
// @stacked-route
  ],
  dependencies: [
    LazySingleton(classType: BottomSheetService),
    LazySingleton(classType: DialogService),
    LazySingleton(classType: NavigationService),
    // @stacked-service
  ],
  bottomsheets: [
    StackedBottomsheet(classType: NoticeSheet),
    // @stacked-bottom-sheet
  ],
  dialogs: [
    StackedDialog(classType: InfoAlertDialog),
    // @stacked-dialog
  ],
)
class App {}
