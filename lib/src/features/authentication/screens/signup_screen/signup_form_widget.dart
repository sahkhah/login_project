import 'package:flutter/material.dart';
import 'package:login_project/src/features/authentication/controllers/signup_controller.dart';

import '../../../../constants/sizes.dart';
import '../../../../constants/text_strings.dart';
import '../../../../repository/authentication_repository/authentication_repository.dart';
import '../dashboard/dashboard_screen.dart';

class SignUpFormWidget extends StatelessWidget {
  const SignUpFormWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final controller = SignupController();
    final firebaseSignup = AuthenticationRepository();
    final formKey = GlobalKey<FormState>();
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: formHeight - 10), //add padding from top to bottom
      child: Form(
        key: formKey,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              controller: controller.fullname,
              decoration: const InputDecoration(
                label: Text('FullName'),
                prefixIcon: Icon(Icons.person_outline_rounded),
              ),
            ),
            const SizedBox(
              height: formHeight - 20,
            ),
            TextFormField(
              controller: controller.email,
              decoration: const InputDecoration(
                label: Text(eMail),
                prefixIcon: Icon(Icons.email_outlined),
              ),
            ),
            const SizedBox(
              height: formHeight - 20,
            ),
            TextFormField(
              controller: controller.phoneNo,
              decoration: const InputDecoration(
                label: Text('Phone No.'),
                prefixIcon: Icon(Icons.numbers),
              ),
            ),
            const SizedBox(
              height: formHeight - 20,
            ),
            TextFormField(
              controller: controller.password,
              decoration: const InputDecoration(
                //the decoration for textformfield is in the theme folder
                label: Text(password),
                prefixIcon: Icon(Icons.fingerprint),
              ),
            ),
            const SizedBox(
              height: formHeight - 20,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                  onPressed: () {
                    if (formKey.currentState!.validate()) {
                      firebaseSignup.createUserWithEmailAndPassword(
                          controller.email.text, controller.password.text);
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) => const DashboardScreen())));
                    }
                  },
                  child: Text(signup.toUpperCase())),
            )
          ],
        ),
      ),
    );
  }
}
