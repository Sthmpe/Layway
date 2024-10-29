import 'package:amazon_clone/features/authentication/screens/onboarding/onboarding.dart';
import 'package:amazon_clone/util/theme/theme.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: LayawayAppTheme.lightTheme,
      darkTheme: LayawayAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}