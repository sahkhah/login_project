import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppTextTheme {
  static TextTheme lightTextTheme = TextTheme(
      headline2: GoogleFonts.montserrat(
        color: Colors.black87,
      ),
      subtitle2: GoogleFonts.poppins(
        color: Colors.black54,
      ));

  static TextTheme dartTextTheme = TextTheme(
    headline2: GoogleFonts.montserrat(
      color: Colors.white70,
    ),
    subtitle2: GoogleFonts.poppins(
      color: Colors.white60,
    ),
  );
}
