import 'package:flutter/material.dart';
import 'package:login_project/src/features/authentication/screens/forget_password_screen/forget_password_mail/forget_password_mail.dart';
import 'package:login_project/src/features/authentication/screens/forget_password_screen/forgetpassword_options/forget_password_btn_widget.dart';

import '../../../../../constants/sizes.dart';
import '../../../../../constants/text_strings.dart';
import '../forget_password_phone/forget_password_phone.dart';

class ForgetPasswordScreen {
  static Future<dynamic> buildShowModalBottomSheet(BuildContext context) {
    return showModalBottomSheet(
        shape:
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(20.0)),
        context: context,
        builder: ((context) => Container(
              padding: const EdgeInsets.all(defaultSize),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    forgetPasswordTitle,
                    style: Theme.of(context).textTheme.headline2,
                  ),
                  Text(
                    forgetPasswordSubtitle,
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  const SizedBox(
                    height: defaultSize,
                  ),
                  //first button for email forget password
                  ForgetPasswordBtnWidget(
                    btnIcon: Icons.mail_outline_rounded,
                    title: eMail,
                    subTitle: resetViaEmail,
                    onTap: () {
                      Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) =>
                                   const ForgetPasswordMailScreen()),
                          (route) => false);
                    },
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  //second button for phone no. forget passsword
                  ForgetPasswordBtnWidget(
                    btnIcon: Icons.mobile_friendly_rounded,
                    title: phoneNo,
                    subTitle: resetViaPhone,
                    onTap: () {
                       Navigator.of(context).pushAndRemoveUntil(
                          MaterialPageRoute(
                              builder: (context) =>
                                   const ForgetPasswordPhoneScreen()),
                          (route) => false);
                    },
                  ),
                ],
              ),
            )));
  }
}
