import 'package:flutter/material.dart';
import 'package:flutter_application_1/src/features/authentication/screens/forgot_Password/forgot_passwoerd_options/forget_password_modal_bottom_sheet.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: EdgeInsets.symmetric(vertical: mFormHeight - 10.0),
      child: Column(
        children: [
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: Icon(Icons.person_outline_outlined),
              labelText: mEmail,
              hintText: mEmail,
              border: OutlineInputBorder(),
            ),
          ),
          SizedBox(height: mFormHeight - 20.0),
          TextFormField(
            decoration: InputDecoration(
                prefixIcon: Icon(Icons.password_outlined),
                labelText: mPassword,
                hintText: mPassword,
                border: OutlineInputBorder(),
                suffixIcon: IconButton(
                  onPressed: null,
                  icon: Icon(Icons.remove_red_eye_sharp),
                )),
          ),
          SizedBox(height: mFormHeight - 20.0),
          Align(
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                ForgetPasswordScreen.buildShowModalBottomSheet(context);
              },
              child: Text(mForgotPassword),
            ),
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
                onPressed: () {}, child: Text(mLogin.toUpperCase())),
          )
        ],
      ),
    ));
  }
}
