import 'package:amazon_clone/features/authentication/controllers/controller.onboarding/onboarding_controller.dart';
import 'package:amazon_clone/util/constants/colors.dart';
import 'package:amazon_clone/util/constants/sizes.dart';
import 'package:amazon_clone/util/devices/device_utility.dart';
import 'package:amazon_clone/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingDotNavigation extends StatelessWidget {
  const OnboardingDotNavigation({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = OnBoardingController.instance;
    final dark = LayawayHelperFunctions.isDarkMode(context);

    print('dark_OnboardingDotNavigation: $dark'); // for debugging
    return Positioned(
      bottom: LayawayDeviceUtils
          .getBottomNavigationBarHeight(), // it should be multiplied by 25% for modile devices
      left: LayawaySizes.defaultSpace,
      child: SmoothPageIndicator(
        count: 3,
        controller: controller.pageController,
        onDotClicked: controller.dotNavigationClick,
        effect: ExpandingDotsEffect(
          activeDotColor: dark ? LayawayColors.light : LayawayColors.dark,
          dotHeight: 6,
        ),        
      ),
    );
  }
}
