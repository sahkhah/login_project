import 'package:flutter/material.dart';
import 'package:login_project/src/features/authentication/controllers/signup_controller.dart';
import 'package:login_project/src/features/authentication/screens/dashboard/dashboard_screen.dart';
import 'package:login_project/src/repository/authentication_repository/authentication_repository.dart';
import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../../forget_password_screen/forgetpassword_options/forget_password_model_bottom_sheet.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    Key? key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    final controller = SignupController();
    var obscure = true;
    return Form(
        child: Container(
      padding: const EdgeInsets.symmetric(vertical: formHeight - 10),
      child: SizedBox(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            TextFormField(
              keyboardType: TextInputType.emailAddress,
              controller: controller.email,
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
              controller: controller.password,
              obscureText: obscure,
              decoration: InputDecoration(
                prefixIcon: const Icon(Icons.fingerprint),
                suffixIcon: IconButton(
                    onPressed: () {
                      obscure = false;
                    },
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
                  onPressed: () {
                    AuthenticationRepository().loginWithEmailAndPassword(
                        controller.email.text, controller.password.text);
                    final user = AuthenticationRepository().getCurrentUser();
                    if(user!=null){
                      Navigator.of(context).pushReplacement(MaterialPageRoute(builder: ((context) => const DashboardScreen())));
                    }
                  },
                ))
          ],
        ),
      ),
    ));
  }
}
