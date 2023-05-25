import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/features/authentication/controller/signup_controller.dart';
import 'package:flutter_application_1/src/features/authentication/models/user_model.dart';
import 'package:flutter_application_1/src/features/authentication/screens/forgot_Password/forgot_passwoerd_otp/otp_screen.dart';
import 'package:get/get.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignUpController());
    final _formKey = GlobalKey<FormState>();

    return Container(
      padding: EdgeInsets.symmetric(vertical: mFormHeight - 10.0),
      child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormField(
                  controller: controller.fullName,
                  decoration: InputDecoration(
                    label: Text(mFullName),
                    prefixIcon: Icon(Icons.person_outline_outlined),
                  )),
              SizedBox(height: mFormHeight - 10.0),
              TextFormField(
                  controller: controller.email,
                  decoration: InputDecoration(
                    label: Text(mEmail),
                    prefixIcon: Icon(Icons.email_outlined),
                  )),
              SizedBox(height: mFormHeight - 10.0),
              TextFormField(
                  controller: controller.phoneNo,
                  decoration: InputDecoration(
                    label: Text(mPhoneNumber),
                    prefixIcon: Icon(Icons.phone_android_outlined),
                  )),
              SizedBox(height: mFormHeight - 10.0),
              TextFormField(
                  controller: controller.password,
                  decoration: InputDecoration(
                    label: Text(mPassword),
                    prefixIcon: Icon(Icons.phone_android_outlined),
                  )),
              SizedBox(height: mFormHeight - 10.0),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // SignUpController.instance.registerUser(
                        //     controller.email.text.trim(),
                        //     controller.password.text.trim());

                        // Create the same in the text feild in here and in the User model
                        final user = UserModel(
                            fullName: controller.fullName.text.trim(),
                            email: controller.email.text.trim(),
                            password: controller.password.text.trim(),
                            phoneNo: controller.phoneNo.text.trim());
                        SignUpController.instance.createUser(user);
                      }
                    },
                    child: Text("SignUp".toUpperCase())),
              )
            ],
          )),
    );
  }
}
