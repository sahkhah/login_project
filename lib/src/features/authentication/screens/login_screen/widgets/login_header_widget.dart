import 'package:flutter/material.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/text_strings.dart';

class LoginHeaderWidget extends StatelessWidget {
  const LoginHeaderWidget({
    Key? key,
    required this.imgSize,
  }) : super(key: key);

  final Size imgSize;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
         Image(image: const AssetImage(welcomeImage), height: imgSize.height * 0.3,),  //gives the image 2% of the screen
        Text(
          loginTitle,
          style: Theme.of(context).textTheme.headline2,
        ),
        Text(
          loginSubtitle,
          style: Theme.of(context).textTheme.bodyText1,
        ),
      ],
    );
  }
}