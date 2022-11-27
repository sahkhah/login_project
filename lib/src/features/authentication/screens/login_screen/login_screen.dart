import 'package:flutter/material.dart';
import 'package:login_project/src/common_widget/fade_in_animation/animation_design.dart';
import 'package:login_project/src/constants/sizes.dart';
import '../../../../common_widget/fade_in_animation/fade_in_animation_model.dart';
import 'widgets/login_footer_widget.dart';
import 'widgets/login_form_widget.dart';
import 'widgets/login_header_widget.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final imgSize = mediaQuery.size;
    return SafeArea(
      child: Scaffold(
          body: SizedBox(
            height: 800,
            child: SingleChildScrollView(
        child: SizedBox(
          height: 400,
          child: Stack(
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
                    child: SizedBox(
                      height: 500,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start, //makes the column at the left side of the screen
                        children: [
                              LoginHeaderWidget(imgSize: imgSize),
                              const LoginForm(),
                              const LoginFooterWidget(),
                        ],
                      ),
                    ),
                            ),
                  ),
              ]
                ),
        ),
            
        ),
          ),
      ),
    );
  }
}





