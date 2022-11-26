import 'package:flutter/material.dart';
import 'package:login_project/src/constants/sizes.dart';

import '../../../constants/colors..dart';

class ElevatedBottonTheme {
  ElevatedBottonTheme._();

  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        foregroundColor: whiteColor,
                        backgroundColor: secondaryColor,
                        side: const BorderSide(color: secondaryColor),
                        padding: const EdgeInsets.symmetric(vertical: buttomHeight),
                      ),
  );
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
                        shape: const RoundedRectangleBorder(),
                        foregroundColor: secondaryColor,
                        backgroundColor: whiteColor,
                        side: const BorderSide(color: secondaryColor),
                        padding: const EdgeInsets.symmetric(vertical: buttomHeight,)
                      ),
  );
}
