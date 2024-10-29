import 'package:amazon_clone/util/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:amazon_clone/util/theme/custom_themes/outlined_button_theme.dart';
import 'package:amazon_clone/util/theme/custom_themes/appbar_theme.dart';
import 'package:amazon_clone/util/theme/custom_themes/checkbox_theme.dart';
import 'package:amazon_clone/util/theme/custom_themes/chip_theme.dart';
import 'package:amazon_clone/util/theme/custom_themes/elevated_button_theme.dart';
import 'package:amazon_clone/util/theme/custom_themes/text_field_theme.dart';
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
    chipTheme: LayawayChipTheme.lightChipTheme,
    elevatedButtonTheme: LayawayElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: LayawayAppBarTheme.lightAppBarTheme,
    checkboxTheme: LayawayCheckboxTheme.lightChechboxTheme,
    outlinedButtonTheme: LayawayOutlinedButton.lightOutlinedButtonTheme,
    bottomSheetTheme: LayawayBottomSheetTheme.lightBottomSheetTheme,
    inputDecorationTheme: LayawayTextFormFieldTheme.lightInputDecorationTheme
  );


  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: GoogleFonts.poppins().fontFamily,
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: LayawayTextTheme.darkTextTheme,
    chipTheme: LayawayChipTheme.darkChipTheme,
    elevatedButtonTheme: LayawayElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: LayawayAppBarTheme.darkAppBarTheme,
    checkboxTheme: LayawayCheckboxTheme.darkChechboxTheme,
    outlinedButtonTheme: LayawayOutlinedButton.darkOutlinedButtonTheme,
    bottomSheetTheme: LayawayBottomSheetTheme.darkBottomSheetTheme,
    inputDecorationTheme: LayawayTextFormFieldTheme.darkInputDecorationTheme
  );
}
