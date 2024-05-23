import 'package:flutter/material.dart';
import 'package:kally_dish/ui/common/app_images.dart';
import 'package:kally_dish/ui/views/splash/widgets.dart/curved_clipper.dart';
import 'package:kally_dish/ui/views/splash_one/widgets/animated_object.dart';
import 'package:kally_dish/ui/views/splash_one/widgets/slider_object.dart';
import 'package:stacked/stacked.dart';
import 'splash_one_viewmodel.dart';
import 'package:flutter_svg/svg.dart';

// class SplashOneView extends StackedView<SplashOneViewModel> {
//   const SplashOneView({Key? key}) : super(key: key);
//   @override
//   Widget builder(
//     BuildContext context,
//     SplashOneViewModel viewModel,
//     Widget? child,
//   ) {
//     return Scaffold(
//       backgroundColor: Theme.of(context).colorScheme.background,
//       body: Container(
//         padding: const EdgeInsets.only(left: 25.0, right: 25.0),
//       ),
//     );
//   }
//   @override
//   SplashOneViewModel viewModelBuilder(
//     BuildContext context,
//   ) =>
//       SplashOneViewModel();
// }

class SplashOneView extends StatefulWidget {
  const SplashOneView({super.key});

  @override
  State<SplashOneView> createState() => _SplashOneViewState();
}

class _SplashOneViewState extends State<SplashOneView>
    with TickerProviderStateMixin {
  //controllers
  late AnimationController tweenController;
  late Animation<double> tweenAnimation;

  late AnimationController _slideUpController;
  late Animation<Offset> _slideUpAnimation;

  void fadeAnimationInitialize() {
    tweenController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    tweenAnimation = Tween<double>(begin: 0, end: 1).animate(
      CurvedAnimation(
        parent: tweenController,
        curve: Curves.easeInOut,
      ),
    );

    Future.delayed(
      const Duration(seconds: 0),
      () {
        tweenController.forward();
        _slideUpController.forward();
      },
    );
  }

  void slideUpAnimationInitialize() {
    _slideUpController = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 2),
    );

    _slideUpAnimation = Tween<Offset>(
      begin: const Offset(0, 1),
      end: const Offset(0, 0),
    ).animate(
      CurvedAnimation(
        parent: _slideUpController,
        curve: Curves.easeInOut,
      ),
    );
  }

  @override
  void initState() {
    fadeAnimationInitialize();
    slideUpAnimationInitialize();
    super.initState();
  }

  @override
  void dispose() {
    // TODO: implement dispose
    tweenController.dispose();
    _slideUpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder<SplashOneViewModel>.reactive(
      onViewModelReady: (viewModel) {},
      viewModelBuilder: () => SplashOneViewModel(),
      builder: (context, viewModel, child) {
        final size = MediaQuery.sizeOf(context);
        return Scaffold(
          backgroundColor: Theme.of(context).colorScheme.background,
          // backgroundColor: Colors.grey,
          // body: Column(
          //   children: [
          //     Align(
          //       alignment: Alignment.topLeft,
          //       child: SvgPicture.asset(AppImages.blobOne),
          //     ),
          //     Image.asset(AppImages.kallyDishLogo),
          //     ClipPath(
          //       clipper: CurvedShapeClipper(),
          //       child: Image.asset(
          //         AppImages.splashImage,
          //         fit: BoxFit.cover,
          //       ),
          //     ),
          //     Positioned(
          //       //bottom: MediaQuery.sizeOf(context).height * .10,
          //       child: SlideObject(
          //         slideAnimation: _slideUpAnimation,
          //         child: ClipPath(
          //           clipper: CurvedShapeClipper(),
          //           child: Image.asset(
          //             AppImages.splashImage,
          //             fit: BoxFit.cover,
          //           ),
          //         ),
          //       ),
          //     )
          //   ],
          // ),
          body: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: SvgPicture.asset(AppImages.blobOne),
              ),
              // Align(
              //   //top: size.height * 0.1,
              //   heightFactor: size.height * 0.02,
              //   //heightFactor: ,
              //   child: Image.asset(
              //     AppImages.kallyDishLogo,
              //   ),
              // ),
              Positioned(
                //bottom: size.height * 0.5,
                //height: size.height * 0.2,
                //heightFactor: ,
                child: Center(
                  //alignment: Alignment.topCenter,
                  child: Image.asset(
                    AppImages.kallyDishLogo,
                  ),
                ),
              ),
              const SizedBox(height: 20),
              Positioned(
                // bottom: MediaQuery.sizeOf(context).height * .15,
                //bottom: 0,
                bottom: size.height * -0.02,
                child: SlideObject(
                  slideAnimation: _slideUpAnimation,
                  //child: AnimatedObject(appTextAnimation: appTextAnimation, object: object) ,

                  child: AnimatedBuilder(
                    animation: tweenAnimation,
                    builder: (context, child) {
                      return Opacity(
                          opacity: tweenAnimation.value,
                          //child: SvgPicture.asset(femaleVector),
                          child: ClipPath(
                            clipper: CurvedShapeClipper(),
                            child: Image.asset(AppImages.splashImage),
                          ));
                    },
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }
}
