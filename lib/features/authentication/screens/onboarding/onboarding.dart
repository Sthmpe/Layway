import 'package:Layway/features/authentication/controllers/controller.onboarding/onboarding_controller.dart';
import 'package:Layway/features/authentication/screens/onboarding/widgets/onboarding_dot_navigation.dart';
import 'package:Layway/features/authentication/screens/onboarding/widgets/onboarding_next.dart';
import 'package:Layway/features/authentication/screens/onboarding/widgets/onboarding_page.dart';
import 'package:Layway/features/authentication/screens/onboarding/widgets/onboarding_skip.dart';
import 'package:Layway/util/constants/image_strings.dart';
import 'package:Layway/util/constants/text_strings.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OnBoardingScreen extends StatelessWidget {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(OnBoardingController());
     
    return Scaffold(
      body: Stack(
        children: [
          /// Horizontal Scrollable Pages
          PageView(
            controller: controller.pageController,
            onPageChanged: controller.updatePageIndicator,
            children: const [
              OnBoardingPage(
                image: LayawayImages.onBoardingImage1,
                title: LayawayTexts.onBoardingTitle1,
                subTitle: LayawayTexts.onBoardingSubTitle1,
              ),
              OnBoardingPage(
                image: LayawayImages.onBoardingImage2,
                title: LayawayTexts.onBoardingTitle2,
                subTitle: LayawayTexts.onBoardingSubTitle2,
              ),
              OnBoardingPage(
                image: LayawayImages.onBoardingImage3,
                title: LayawayTexts.onBoardingTitle3,
                subTitle: LayawayTexts.onBoardingSubTitle3,
              ),
            ],
          ),

          /// Skip Button
          const OnBoardingSkip(),

          /// Dot Navigation SmoothPage Indicator
          const OnboardingDotNavigation(),

          /// Circular Button
          const OnBoardingNextButton(),
        ],
      ),
    );
  }
}
