import 'package:flutter/material.dart';
import 'package:login_project/src/common_widget/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_project/src/constants/colors..dart';
import 'package:login_project/src/constants/sizes.dart';
import 'package:login_project/src/constants/text_strings.dart';
import 'package:login_project/src/features/authentication/screens/welcome_screen/welcome_screen.dart';
import '../../../../common_widget/fade_in_animation/animation_design.dart';
import '../../../../constants/image_strings.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animate = false;
  
  @override
  void initState() {
    super.initState();
    startSplashAnimation();
  }

  Future startSplashAnimation() async {
    //wait, animation is still false
    await Future.delayed(const Duration(milliseconds: 500));
    //sets animate to true, animates in after half a second
    setState(() {
      animate = true;
    });
    //after animation, wait  after three seconds
    await Future.delayed(const Duration(milliseconds: 3000));
    //sets animate to false, animates out
    setState(() {
      animate = false;
    });
    //after animation, wait
    await Future.delayed(const Duration(milliseconds: 2000));
    //after 2 seconds jump to welcome screen
    Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: ((context) => const WelcomeScreen())));
  }

  /* Future startAnimation() async {
    //wait, animation is still false
    await Future.delayed(const Duration(milliseconds: 500));
    //sets animate to true, animates in after half a second
    setState(() {
      animate = true;
    });
  } */

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          FadeInAnimationWidget(
            animate: animate,
            animatePosition: AnimationPosition(
              topBefore: -30,
              topAfter: 0,
              leftAfter: -30,
              leftBefore: 0,
            ),
            durationInMs: 1600,
            child: const Image(image: AssetImage(splashTopIcon)),
          ),
          FadeInAnimationWidget(
            animate: animate,
            animatePosition: AnimationPosition(
              topBefore: 80,
              topAfter: 80,
              leftAfter: 30,
              leftBefore: -80,
            ),
            durationInMs: 2000,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  appName,
                  style: Theme.of(context).textTheme.headline3,
                ),
                Text(
                  appTagLine,
                  style: Theme.of(context).textTheme.headline3,
                ),
              ],
            ),
          ),
          FadeInAnimationWidget(
            animate: animate,
            animatePosition: AnimationPosition(
              bottomBefore: -80,
              bottomAfter: 100,
              leftAfter: -30,
              leftBefore: -30,
            ),
            durationInMs: 2400,
            child: const SizedBox(
              width: 500,
              height: 700,
              child: Image(
                image: AssetImage(splashImage),
              ),
            ),
          ),
          FadeInAnimationWidget(
            animate: animate,
            animatePosition: AnimationPosition(
              bottomBefore: -30,
              bottomAfter: 40,
              leftAfter: 70,
              leftBefore: 70,
            ),
            durationInMs: 2800,
            child: Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  const Align(
                      alignment: Alignment.center,
                      child: Text('KHAMILL\'S DEV.',
                          style: TextStyle(
                              fontSize: 40, fontStyle: FontStyle.italic))),
                  Container(
                    padding: const EdgeInsets.only(left: 20),
                    height: splashContainerSize,
                    width: splashContainerSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(100),
                      color: primaryColor,
                    ),
                  ),
                ]),
          ),
        ],
      ),
    );
  }
}
