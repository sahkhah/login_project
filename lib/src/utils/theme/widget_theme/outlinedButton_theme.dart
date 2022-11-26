import 'package:flutter/material.dart';
import 'package:login_project/src/constants/sizes.dart';

import '../../../constants/colors..dart';

class OutlinedBottonTheme {
  OutlinedBottonTheme._();

  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        foregroundColor: secondaryColor,
                        side: const BorderSide(color: secondaryColor),
                        padding: const EdgeInsets.symmetric(vertical: buttomHeight),
                      ),
  );
  static final darkOutlinedButtonTheme = OutlinedButtonThemeData(
    style: OutlinedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        foregroundColor: whiteColor,
                        side: const BorderSide(color: whiteColor),
                        padding: const EdgeInsets.symmetric(vertical: buttomHeight),
                      ),
  );
}
