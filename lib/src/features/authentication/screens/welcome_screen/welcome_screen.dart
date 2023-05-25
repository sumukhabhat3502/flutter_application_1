import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/common_widgets/fade_in_animation/animation_design.dart';
import 'package:flutter_application_1/src/common_widgets/fade_in_animation/fade_in_animation_controller.dart';
import 'package:flutter_application_1/src/common_widgets/fade_in_animation/fade_in_animation_model.dart';
import 'package:flutter_application_1/src/constants/colors.dart';
import 'package:flutter_application_1/src/constants/sizes.dart';
import 'package:flutter_application_1/src/constants/text_strings.dart';
import 'package:flutter_application_1/src/features/authentication/screens/login/login_screen.dart';
import 'package:flutter_application_1/src/features/authentication/screens/signup/signup_screen.dart';
import 'package:get/get.dart';

class WelcomeScreeen extends StatelessWidget {
  const WelcomeScreeen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(FadeInAnimationController());
    controller.startAnimation();
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height;
    var brightness = mediaQuery.platformBrightness;
    final isDarkMode = brightness == Brightness.dark;
    return Scaffold(
        backgroundColor: isDarkMode ? mSecondaryColor : mPrimaryColor,
        body: Stack(
          children: [
            MFadeInAnimation(
              durationInMS: 1200,
              animatePosition: MAnimatePosition(
                  bottomBefore: -100,
                  bottomAfter: 0,
                  rightAfter: 0,
                  rightBefore: 0,
                  leftAfter: 0,
                  leftBefore: 0,
                  topAfter: 0,
                  topBefore: 0),
              child: Container(
                padding: EdgeInsets.all(mDefaultSize),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    // Image(image: AssetImage(),height=height 0.6),
                    Text(
                      mWelcomeTitle,
                      style: Theme.of(context).textTheme.headline3,
                    ),
                    Text(
                      mWlcomeSubTitle,
                      style: Theme.of(context).textTheme.bodyText1,
                      textAlign: TextAlign.center,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: OutlinedButton(
                              onPressed: () => Get.to(() => LoginScreen()),
                              child: Text(mLogin.toUpperCase())),
                        ),
                        Expanded(
                          child: ElevatedButton(
                              onPressed: () => Get.to(() => SignUpScreen()),
                              child: Text(mRegister.toUpperCase())),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
          ],
        ));
  }
}
