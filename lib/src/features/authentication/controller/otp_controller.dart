import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import 'package:flutter_application_1/src/repository/authentication_repository/authentication_repository.dart';
import 'package:get/get.dart';

class OTPController extends GetxController {
  static OTPController get instance => Get.find();
  void verifyOTP(String otp) async {
    var isVerified = await AuthenticationRepository.instance.verifyOTP(otp);
    isVerified
        ? Get.offAll(WelcomeScreeen()) // change welcomescrren to dashboard
        : Get.back();
  }
}
