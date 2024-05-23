import 'package:flutter/material.dart';
import 'package:kally_dish/ui/common/app_images.dart';
import 'package:kally_dish/ui/views/splash/widgets.dart/curved_clipper.dart';
import 'package:kally_dish/ui/views/splash_one/widgets/slider_object.dart';
import 'package:stacked/stacked.dart';
import 'splash_one_viewmodel.dart';
import 'package:flutter_svg/svg.dart';

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

  //initialize controllers
  @override
  void initState() {
    fadeAnimationInitialize();
    slideUpAnimationInitialize();
    super.initState();
  }

  //dispose controllers
  @override
  void dispose() {
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
              const SizedBox(height: 20),
              Positioned(
                bottom: size.height * -0.02,
                child: SlideObject(
                  slideAnimation: _slideUpAnimation,
                  child: AnimatedBuilder(
                    animation: tweenAnimation,
                    builder: (context, child) {
                      return Opacity(
                          opacity: tweenAnimation.value,
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
