import 'package:flutter/material.dart';
import 'package:kally_dish/ui/common/app_images.dart';
import 'package:kally_dish/ui/common/ui_helpers.dart';
import 'package:kally_dish/ui/extensions/extension.dart';
import 'package:kally_dish/ui/views/splash/widgets.dart/curved_clipper.dart';
import 'package:stacked/stacked.dart';
import 'splash_animated_viewmodel.dart';
import 'package:flutter_svg/svg.dart';

class SplashAnimatedView extends StatefulWidget {
  const SplashAnimatedView({super.key});

  @override
  State<SplashAnimatedView> createState() => _SplashAnimatedViewState();
}

class _SplashAnimatedViewState extends State<SplashAnimatedView>
    with TickerProviderStateMixin {
  //controllers
  late AnimationController tweenController;
  late Animation<double> tweenAnimation;

  late AnimationController _slideUpController;
  late Animation<Offset> _slideUpAnimation;

  //fade in animation
  void fadeInAnimationInitialize() {
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

  //slide up animation
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
    fadeInAnimationInitialize();
    slideUpAnimationInitialize();
    super.initState();
  }

  @override
  void dispose() {
    tweenController.dispose();
    _slideUpController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return ViewModelBuilder.reactive(
      viewModelBuilder: () => SplashAnimatedViewModel(),
      onViewModelReady: (viewModel) {
        debugPrint('cook logic when vm is ready');
      },
      builder: (context, viewModel, child) {
        debugPrint('builder logic ready');
        return Scaffold(
          backgroundColor: context.pallete?.white,
          body: Stack(
            children: [
              Align(
                alignment: Alignment.topLeft,
                child: SvgPicture.asset(AppImages.blobOne),
              ),
              Positioned(
                child: Center(
                  child: Image.asset(
                    AppImages.kallyDishLogo,
                  ),
                ),
              ),
              Positioned(
                  bottom: screenHeight(context) * -0.02,
                  child: SlideTransition(
                    position: _slideUpAnimation,
                    child: AnimatedBuilder(
                      animation: tweenAnimation,
                      builder: (context, child) {
                        return Opacity(
                          opacity: tweenAnimation.value,
                          child: ClipPath(
                            clipper: CurvedShapeClipper(),
                            child: Image.asset(AppImages.splashImage),
                          ),
                        );
                      },
                    ),
                  ))
            ],
          ),
        );
      },
    );
  }
}
