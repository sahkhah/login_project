import 'package:flutter/material.dart';

import '../../../../constants/image_strings.dart';
import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class SignUpFooterWidget extends StatelessWidget {
  const SignUpFooterWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
     children: [
        const Text('0R'),
        const SizedBox(height: formHeight - 20,),
        SizedBox(
         width: double.infinity,
         child: OutlinedButton.icon(
           onPressed: (){}, 
           icon: const Image(image: AssetImage(googleLogoImage), width: 20.0),
            label: Text(signinWithGoogle.toUpperCase()),
         ),
        ),
         TextButton(onPressed: (){},
          child: Text.rich(
           TextSpan(
             children: [
               TextSpan(text: alreadyHaveAcc, style: Theme.of(context).textTheme.bodyText1),
               TextSpan(text: login.toUpperCase()),
             ],
           )
          )),
     ],
    );
  }
}


