import 'package:flutter/material.dart';

class FormHeaderWidget extends StatelessWidget {
  const FormHeaderWidget({
    Key? key,
    required this.subtitle,
    this.imageHeight = 0.2,
    this.imgColor,
    this.crossAxisAlignment = CrossAxisAlignment.start, //crossaxisalignment would be start by default
    this.heightBetween,
    this.textAlign, 
    required this.image, 
    required this.title,
  }) : super(key: key);

  final String image, title, subtitle;
  final double imageHeight;
  final Color? imgColor;
  final CrossAxisAlignment crossAxisAlignment;
  final double? heightBetween;
  final TextAlign? textAlign;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Image(
          image: AssetImage(image),
          height: size.height * imageHeight,
          color: imgColor,
        ),
        SizedBox(
          height: heightBetween,
        ),
        Text(
          title,
          style: Theme.of(context).textTheme.headline2,
        ),
        SizedBox(
          height: heightBetween,
        ),
        Text(
          subtitle,
          textAlign: textAlign,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}
