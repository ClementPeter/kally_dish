import 'package:flutter/material.dart';

class SlideObject extends StatelessWidget {
  const SlideObject({
    super.key,
    required this.slideAnimation,
    this.child,
  });
  final Animation<Offset> slideAnimation;
  final Widget? child;
  @override
  Widget build(BuildContext context) {
    return SlideTransition(
      position: slideAnimation,
      child: child,
    );
  }
}
