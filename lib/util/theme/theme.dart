import 'package:amazon_clone/util/theme/custom_themes/elevated_button_theme.dart';
import 'package:amazon_clone/util/theme/custom_themes/text_theme.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class LayawayAppTheme {
  LayawayAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme: LayawayTextTheme.lightTextTheme,
    elevatedButtonTheme: LayawayElevatedButtonTheme.lightElevatedButtonTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: LayawayTextTheme.darkTextTheme,
    elevatedButtonTheme: LayawayElevatedButtonTheme.darkElevatedButtonTheme,
  );
}
