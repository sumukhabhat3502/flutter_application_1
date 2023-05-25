import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../models/model_onboarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);
  final OnBoardingModel model;
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      color: model.bgColor,
      padding: const EdgeInsets.all(mDefaultSize),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        mainAxisSize: MainAxisSize.max,
        children: [
          // Image(image: AssetImage(model.image), height: size.height = 0.5)
        ],
      ),
    );
  }
}
