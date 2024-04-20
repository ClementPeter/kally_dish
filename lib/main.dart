import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:kally_dish/app/app.bottomsheets.dart';
import 'package:kally_dish/app/app.dialogs.dart';
import 'package:kally_dish/app/app.locator.dart';
import 'package:kally_dish/app/app.router.dart';
import 'package:stacked_services/stacked_services.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await setupLocator();
  setupDialogUi();
  setupBottomSheetUi();
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(390, 805),
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
            initialRoute: Routes.startupView,
            onGenerateRoute: StackedRouter().onGenerateRoute,
            navigatorKey: StackedService.navigatorKey,
            navigatorObservers: [
              StackedService.routeObserver,
            ],
          );
        });
  }
}
