import 'package:amazon_clone/features/authentication/controllers/controller.onboarding/onboarding_controller.dart';
import 'package:amazon_clone/util/constants/sizes.dart';
import 'package:amazon_clone/util/devices/device_utility.dart';
import 'package:flutter/material.dart';


class OnBoardingSkip extends StatelessWidget {
  const OnBoardingSkip({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      top: LayawayDeviceUtils.getAppBarHeight(),
      right: LayawaySizes.defaultSpace,
      child: TextButton(
        onPressed: () => OnBoardingController.instance.skipPage(),
        child: const Text('Skip'),
      ),
    );
  }
}