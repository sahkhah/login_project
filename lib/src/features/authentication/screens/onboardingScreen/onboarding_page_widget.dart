import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../models/model_onboarding.dart';

class OnBoardingPageWidget extends StatelessWidget {
  const OnBoardingPageWidget({
    Key? key,
    required this.model,
  }) : super(key: key);

  final OnboardingModel model;
  
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(defaultSize),
      color: model.bgColor,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Image(image: AssetImage(model.image), height: model.height * 0.4), //let the image take half the size of the screen
            Column(
              children: [
                Text(
                  model.title,
                  style: Theme.of(context).textTheme.headline3,
                ),
                 Text(
                  model.subTitle,
                  textAlign: TextAlign.center,
                ),
              ],
            ),
            Text(
              model.counterText,
              style: Theme.of(context).textTheme.headline6,
            ),
            const SizedBox(
              height: 80.0,
            ),
          ]),
    );
  }
}