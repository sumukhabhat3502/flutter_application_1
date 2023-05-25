// ignore_for_file: must_call_super

import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter_application_1/src/constants/sizes.dart';
import 'package:flutter_application_1/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:get/get.dart';

import '../../../../common_widgets/fade_in_animation/animation_design.dart';

class SplashScreen extends StatelessWidget {
  SplashScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startSpalshAnimation();
    return Scaffold(
      body: Stack(
        children: [
          MFadeInAnimation(
            durationInMS: 1600,
            animatePosition: MAnimatePosition(
                topAfter: 0, topBefore: -30, leftBefore: -30, leftAfter: 0),
            child: Image(image: AssetImage('assetName')),
          ),
          MFadeInAnimation(
            durationInMS: 2000,
            animatePosition: MAnimatePosition(
                topBefore: 80,
                topAfter: 80,
                leftAfter: mDefaultSize,
                leftBefore: -80),
            child: Image(
              image: AssetImage('assetName'),
            ),
          ),
          MFadeInAnimation(
            durationInMS: 2400,
            animatePosition: MAnimatePosition(
                bottomBefore: 0,
                bottomAfter: 100,
                leftAfter: mDefaultSize,
                leftBefore: -80),
            child: Image(
              image: AssetImage('assetName'),
            ),
          ),
        ],
      ),
    );
  }
}
