import 'package:flutter/material.dart';

import '../../../../constants/text_strings.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage('assetName'),
          height: size.height * 0.2,
        ),
        Text(
          mLoginTitle,
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(mLoginSubTitle, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
