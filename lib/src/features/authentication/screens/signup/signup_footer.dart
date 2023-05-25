import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/text_strings.dart';

class SignUpFooter extends StatelessWidget {
  const SignUpFooter({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text("Or"),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
            onPressed: () {},
            icon: Image(
              image: AssetImage(mGoogleLogoImage),
              width: 20.0,
            ),
            label: Text(mSignInWithGoogle),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: Text.rich(TextSpan(
              text: "Already Have an Account?",
              style: Theme.of(context).textTheme.bodyText1,
              children: [
                TextSpan(text: "Login", style: TextStyle(color: Colors.blue))
              ])),
        )
      ],
    );
  }
}
