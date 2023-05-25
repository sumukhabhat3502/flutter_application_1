import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:get/get.dart';

import 'fade_in_animation_controller.dart';

class MFadeInAnimation extends StatelessWidget {
  MFadeInAnimation({
    Key? key,
    required this.durationInMS,
    this.animatePosition,
    required this.child,
  }) : super(key: key);

  final controller = Get.put(FadeInAnimationController());
  final int durationInMS;
  final MAnimatePosition? animatePosition;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => AnimatedPositioned(
        duration: Duration(microseconds: durationInMS),
        top: controller.animate.value
            ? animatePosition!.topAfter
            : animatePosition!.topBefore,
        left: controller.animate.value
            ? animatePosition!.leftBefore
            : animatePosition!.leftAfter,
        bottom: controller.animate.value
            ? animatePosition!.bottomBefore
            : animatePosition!.bottomAfter,
        right: controller.animate.value
            ? animatePosition!.rightBefore
            : animatePosition!.rightAfter,
        child: AnimatedOpacity(
          duration: Duration(milliseconds: durationInMS),
          opacity: controller.animate.value ? 1 : 0,
          child: child,
          // child: Image(
          //   image: AssetImage(''), //Add Images
          // ),
        ),
      ),
    );
  }
}
