import 'package:kally_dish/ui/bottom_sheets/notice/notice_sheet.dart';
import 'package:kally_dish/ui/dialogs/info_alert/info_alert_dialog.dart';
import 'package:kally_dish/ui/views/home/home_view.dart';
import 'package:kally_dish/ui/views/startup/startup_view.dart';
import 'package:stacked/stacked_annotations.dart';
import 'package:stacked_services/stacked_services.dart';
import 'package:kally_dish/ui/views/splash/splash_view.dart';
import 'package:kally_dish/ui/views/splash_one/splash_one_view.dart';
// @stacked-import

@StackedApp(
  routes: [
    MaterialRoute(page: HomeView),
    MaterialRoute(page: StartupView),
    MaterialRoute(page: SplashView),
    MaterialRoute(page: SplashOneView),
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
