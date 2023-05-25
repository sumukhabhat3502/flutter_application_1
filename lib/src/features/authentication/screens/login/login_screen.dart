import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/constants/image_strings.dart';
import 'package:flutter_application_1/src/constants/sizes.dart';
import 'package:flutter_application_1/src/features/authentication/screens/login/login_footer_widget.dart';
import '../../../../constants/text_strings.dart';
import 'login_header_widget.dart';
import 'login_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Container(
            padding: EdgeInsets.all(mDefaultSize),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [LoginHeader(size: size), LoginForm(), LoginFooter()],
            ),
          ),
        ),
      ),
    );
  }
}
