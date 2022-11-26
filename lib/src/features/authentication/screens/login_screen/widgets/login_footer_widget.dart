import 'package:flutter/material.dart';
import 'package:login_project/src/features/authentication/screens/signup_screen/signup_screen.dart';

import '../../../../../constants/image_strings.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';

class LoginFooterWidget extends StatelessWidget {
  const LoginFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        const Text('0R'),
        const SizedBox(
          height: formHeight - 20,
        ),
        SizedBox(
          width: double.infinity,
          child: OutlinedButton.icon(
              //the outlinedbutton stle has been initialized in the theme.dart file
              icon: const Image(
                image: AssetImage(googleLogoImage),
                width: 20.0,
              ),
              onPressed: () {},
              label: const Text(signinWithGoogle)),
        ),
        const SizedBox(
          height: formHeight - 20,
        ),
        TextButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(MaterialPageRoute(
                  builder: ((context) => const SignUpScreen())));
            },
            child: Text.rich(TextSpan(
              text: dontHaveAnAccount,
              style: Theme.of(context).textTheme.bodyText1,
              children: const [
                TextSpan(
                  text: signup,
                  style: TextStyle(color: Colors.blue),
                ),
              ],
            ))),
      ],
    );
  }
}
