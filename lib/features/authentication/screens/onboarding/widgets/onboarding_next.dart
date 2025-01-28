import 'package:Layway/features/authentication/controllers/controller.onboarding/onboarding_controller.dart';
import 'package:Layway/util/constants/colors.dart';
import 'package:Layway/util/constants/sizes.dart';
import 'package:Layway/util/devices/device_utility.dart';
import 'package:Layway/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = LayawayHelperFunctions.isDarkMode(context);

    print('dark_OnboardingNextButton: $dark'); // for debugging
    return Positioned(
      right: LayawaySizes.defaultSpace,
      bottom: LayawayDeviceUtils.getBottomNavigationBarHeight(),
      child: ElevatedButton(
        onPressed: () => OnBoardingController.instance.nextPage(),
        style: ElevatedButton.styleFrom(
          shape: const CircleBorder(),
          backgroundColor: dark ? LayawayColors.white : LayawayColors.dark,
          // I want our product color to be black and white that is our color so i will have to chage the primary and secondary colors 
        ),
        child: Icon(Iconsax.arrow_right_3,
          color:  dark ? LayawayColors.black : LayawayColors.white,
        ),
      ),
    );
  }
}