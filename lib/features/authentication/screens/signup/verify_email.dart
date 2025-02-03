import 'package:Layway/common/widgets/success_screen/success_screen.dart';
import 'package:Layway/features/authentication/screens/login/login.dart';
import 'package:Layway/util/constants/image_strings.dart';
import 'package:Layway/util/constants/sizes.dart';
import 'package:Layway/util/constants/text_strings.dart';
import 'package:Layway/util/helpers/helper_functions.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class VerifyEmailScreens extends StatelessWidget {
  const VerifyEmailScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
              onPressed: () => Get.offAll(() => const LoginScreen()),
              icon: const Icon(CupertinoIcons.clear)),
        ],
      ),
      body: SingleChildScrollView(
        // Padding to give default equal space on all sides in all screens
        child: Padding(
          padding: const EdgeInsets.all(LayawaySizes.defaultSpace),
          child: Column(
            children: [
              /// Image
              Image(
                image: const AssetImage(LayawayImages.deliverEmailIllustration),
                width: LayawayHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: LayawaySizes.spaceBtwSections,
              ),

              /// Title & Subtitle
              Text(
                LayawayTexts.confirmEmail,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: LayawaySizes.spaceBtwItems,
              ),
              Text(
                'support@layway.com',
                style: Theme.of(context).textTheme.labelLarge,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: LayawaySizes.spaceBtwItems,
              ),
              Text(
                LayawayTexts.confirmEmailSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: LayawaySizes.spaceBtwSections,
              ),

              /// Buttons
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                    onPressed: () => Get.to(() => SuccessScreen(
                          image: LayawayImages.staticSuccesIllustration,
                          title: LayawayTexts.yourAccountCreatedTitle,
                          subTitle: LayawayTexts.yourAccountCreatedSubTitle,
                          onPressed: () => Get.to(() => const LoginScreen()),
                        )),
                    child: const Text(LayawayTexts.layawayContinue)),
              ),
              const SizedBox(
                height: LayawaySizes.spaceBtwItems,
              ),
              SizedBox(
                width: double.infinity,
                child: TextButton(
                    onPressed: () {},
                    child: const Text(LayawayTexts.resendEmail)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
