import 'package:flutter/material.dart';
import 'package:login_project/src/common_widget/forms/form_header_widget.dart';
import 'package:login_project/src/constants/image_strings.dart';
import 'package:login_project/src/constants/sizes.dart';
import 'package:login_project/src/constants/text_strings.dart';
import 'package:login_project/src/features/authentication/screens/signup_screen/signup_footer_widget.dart';
import 'package:login_project/src/features/authentication/screens/signup_screen/signup_form_widget.dart';

import '../../../../common_widget/fade_in_animation/animation_design.dart';
import '../../../../common_widget/fade_in_animation/fade_in_animation_model.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SingleChildScrollView(
          child:Stack(
            children: [
               FadeInAnimationWidget(
              animate: true,
               durationInMs: 1200,
            animatePosition: AnimationPosition(
              bottomAfter: 0,
              bottomBefore: 0,
              leftAfter: 0,
              leftBefore: -100,
              rightAfter: 0,
              rightBefore: 0,
              topAfter: 0,
              topBefore: 0,
            ),
                child: Container(
                padding: const EdgeInsets.all(defaultSize),
                child: Column(
                  children:  const [
                     FormHeaderWidget(subtitle: signupSubtitle, image: welcomeImage, title: signupTitle),
                     SizedBox(height: formHeight - 20,),
                     SignUpFormWidget(),
                     SizedBox(height: formHeight - 20,),
                     SignUpFooterWidget()
                  ],
                ),
                          ),
              ),
            ],
          ) ),
      ),
    );
  }
}

