import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Or"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              icon: Image(
                image: AssetImage(mGoogleLogoImage),
                width: 20.0,
              ),
              onPressed: () {},
              label: Text(mSignInWithGoogle)),
        ),
        SizedBox(
          height: mFormHeight - 20.0,
        ),
        TextButton(
          onPressed: () {},
          child: Text.rich(TextSpan(
              text: "Dont Have an Account?",
              style: Theme.of(context).textTheme.bodyText1,
              children: [
                TextSpan(text: "SignUp", style: TextStyle(color: Colors.blue))
              ])),
        )
      ],
    );
  }
}
