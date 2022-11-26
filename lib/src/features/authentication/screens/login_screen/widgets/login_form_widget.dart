import 'package:flutter/material.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../../forget_password_screen/forgetpassword_options/forget_password_model_bottom_sheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Form(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: formHeight - 10),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          TextFormField(
            keyboardType: TextInputType.emailAddress,
            decoration: const InputDecoration(
              prefixIcon: Icon(Icons.person_outline_outlined),
              labelText: eMail,
              hintText: eMail,
              border: OutlineInputBorder(), //take note of this a very good UI
            ),
          ),
          const SizedBox(
            height: formHeight - 20,
          ),
          TextFormField(
            decoration: InputDecoration(
              prefixIcon: const Icon(Icons.fingerprint),
              suffixIcon: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.remove_red_eye_sharp)),
              labelText: password,
              hintText: password,
              border:
                  const OutlineInputBorder(), //take note of this a very good UI
            ),
          ),
          const SizedBox(
            height: formHeight - 20,
          ),
          Align(
            //This is used to align a TextButton
            alignment: Alignment.centerRight,
            child: TextButton(
              onPressed: () {
                ForgetPasswordScreen.buildShowModalBottomSheet(context);
              },
              child: const Text(forgetPassword),
            ),
          ),
          SizedBox(
              width: double
                  .infinity, //makes the button spread to the whole available width
              child: ElevatedButton(
                child: const Text(login),
                onPressed: () {},
              ))
        ],
      ),
    ));
  }
}
