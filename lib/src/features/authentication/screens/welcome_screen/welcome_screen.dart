import 'package:flutter/material.dart';
import 'package:login_project/src/common_widget/fade_in_animation/animation_design.dart';
import 'package:login_project/src/common_widget/fade_in_animation/fade_in_animation_model.dart';
import 'package:login_project/src/constants/colors..dart';
import 'package:login_project/src/constants/image_strings.dart';
import 'package:login_project/src/constants/sizes.dart';
import 'package:login_project/src/constants/text_strings.dart';
import 'package:login_project/src/features/authentication/screens/login_screen/login_screen.dart';
import 'package:login_project/src/features/authentication/screens/signup_screen/signup_screen.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaQuery = MediaQuery.of(context);
    var height = mediaQuery.size.height; //get the size of the screen
    var brightness = mediaQuery
        .platformBrightness; //get whether the screen is in dark or light mode
    final isDarkMode =
        brightness == Brightness.dark; //if it's in dark mode return true
    return Scaffold(
      backgroundColor: isDarkMode
          ? secondaryColor
          : primaryColor, //darkmode ? return color black else return yellow
      body: Stack(
        children: [
          FadeInAnimationWidget(
            animate: true,
            durationInMs: 1200,
            animatePosition: AnimationPosition(
              bottomAfter: 0,
              bottomBefore: -100,
              leftAfter: 0,
              leftBefore: 0,
              rightAfter: 0,
              rightBefore: 0,
              topAfter: 0,
              topBefore: 0,
            ),
            child: Container(
                padding: const EdgeInsets.all(defaultSize),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Image(
                      image: const AssetImage(welcomeImage),
                      height:
                          height * 0.6, //make the image occupy 60% of the screen page
                    ),
                    Column(
                      //wrapped in a column so that the spaceevenly property of it's parent column won't affect it
                      children: [
                        Text(
                          welcomeTitle,
                          style: Theme.of(context).textTheme.headline3,
                        ),
                        Text(
                          welcomeSubtitle,
                          style: Theme.of(context).textTheme.bodyText1,
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    Row(
                   children: [
                        Expanded(
                            //enables the button to take all the available spaces provided by the row widget
                            child: OutlinedButton(
                                onPressed: () {
                                  Navigator.of(context).pushReplacement(
                                      MaterialPageRoute(
                                          builder: (context) => const LoginScreen()));
                                },
                                child: Text(login.toUpperCase()))),
                        const SizedBox(
                          //to create a space in between the two bottons
                          width: 30.0,
                        ),
                        Expanded(
                          child: ElevatedButton(
                            onPressed: () {
                              Navigator.of(context).pushAndRemoveUntil(
                                  MaterialPageRoute(
                                      builder: (context) => const SignUpScreen()),
                                  (route) => false);
                            },
                            child: Text(signup.toUpperCase()),
                          ),
                        ),
                      ],
                    )
                  ],
                )),
          ),
        ],
      ),
    );
  }
}
