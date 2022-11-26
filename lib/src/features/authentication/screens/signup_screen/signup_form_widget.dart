import 'package:flutter/material.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: formHeight-10),  //add padding from top to bottom
      child: Form(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              decoration:const  InputDecoration(
                label: Text('FullName'),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            const SizedBox(height: formHeight - 20,),
            TextFormField(
              decoration:const  InputDecoration(
                label: Text(eMail),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(height: formHeight - 20,),
            TextFormField(
              decoration:const  InputDecoration(
                label: Text('Phone No.'),
                prefixIcon: Icon(Icons.numbers),
              ),
            ),
            const SizedBox(height: formHeight - 20,),
            TextFormField(
              decoration:const  InputDecoration(    //the decoration for textformfield is in the theme folder
                label: Text(password),
                prefixIcon: Icon(Icons.fingerprint),
              ),
            ),
            const SizedBox(height: formHeight - 20,),
             SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: (){}, 
                child: Text(signup.toLowerCase())),
            )
          ],
        ),
      ),
    );
  }
}