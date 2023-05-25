import 'package:flutter/material.dart';
import 'package:flutter_application_1/main.dart';
import 'package:flutter_application_1/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:get/get.dart';

class FadeInAnimationController extends GetxController {
  static FadeInAnimationController get find => Get.find();
  RxBool animate = false.obs;

  Future startSpalshAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;
    await Future.delayed(Duration(milliseconds: 3000));
    animate.value = false;
    await Future.delayed(Duration(milliseconds: 2000));
    Get.offAll(WelcomeScreeen());
    // Navigator.pushReplacement(context,
    //     MaterialPageRoute(builder: ((context) => MyHomePage(title: 'title'))));
  }

  Future startAnimation() async {
    await Future.delayed(Duration(milliseconds: 500));
    animate.value = true;

    // Navigator.pushReplacement(context,
    //     MaterialPageRoute(builder: ((context) => MyHomePage(title: 'title'))));
  }
}
