import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AnimatedObject extends StatelessWidget {
  const AnimatedObject({
    super.key,
    required this.appTextAnimation,
    required this.object,
  });

  final Animation<double> appTextAnimation;
  final String object;

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: appTextAnimation,
      builder: (context, Widget? child) {
        return Opacity(
          opacity: appTextAnimation.value,
          //child: SvgPicture.asset(object),
          child: Image.asset(object),
        );
      },
    );
  }
}
