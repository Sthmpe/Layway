import 'package:Layway/util/constants/colors.dart';
import 'package:Layway/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class LayawayAppBarTheme {
  LayawayAppBarTheme._();

  static const lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: LayawayColors.black, size: LayawaySizes.iconSm),
    actionsIconTheme: IconThemeData(color: LayawayColors.black, size: LayawaySizes.iconSm),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: LayawayColors.black)
  );

   static const darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: Colors.transparent,
    surfaceTintColor: Colors.transparent,
    iconTheme: IconThemeData(color: LayawayColors.white, size: LayawaySizes.iconSm),
    actionsIconTheme: IconThemeData(color: LayawayColors.white, size: LayawaySizes.iconSm),
    titleTextStyle: TextStyle(fontSize: 18.0, fontWeight: FontWeight.w600, color: LayawayColors.white)
  );
}