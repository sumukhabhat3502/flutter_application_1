import 'package:flutter/material.dart';

class FormHeaderHeader extends StatelessWidget {
  const FormHeaderHeader(
      {Key? key,
      required this.image,
      required this.title,
      required this.subTitle,
      this.imageHeight = 0.2,
      this.crossAxisAlignment = CrossAxisAlignment.start,
      this.imageColor,
      this.heightBetween,
      this.textAlign})
      : super(key: key);

  final Color? imageColor;
  final double imageHeight;
  final double? heightBetween;
  final String image, title, subTitle;
  final CrossAxisAlignment crossAxisAlignment;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          image: AssetImage(image),
          height: size.height * imageHeight,
          color: imageColor,
        ),
        SizedBox(height: heightBetween),
        Text(
          title,
          style: Theme.of(context).textTheme.headline1,
        ),
        Text(subTitle,
            textAlign: textAlign, style: Theme.of(context).textTheme.bodyText1),
      ],
    );
  }
}
