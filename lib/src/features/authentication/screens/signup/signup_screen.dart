import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/common_widgets/form/form_header_widget.dart';
import 'package:flutter_application_1/src/constants/sizes.dart';
import 'package:flutter_application_1/src/constants/text_strings.dart';
import 'package:flutter_application_1/src/features/authentication/screens/signup/signup_footer.dart';
import 'package:flutter_application_1/src/features/authentication/screens/signup/signup_widget.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(mDefaultSize),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    FormHeaderHeader(
                        image: '',
                        title: mSignUpTitle,
                        subTitle: mSignUpSubTitle),
                    SignUpFormWidget(),
                    SignUpFooter()
                  ],
                ))),
      ),
    );
  }
}
