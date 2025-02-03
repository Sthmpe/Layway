import 'package:Layway/common/styles/spacing_styles.dart';
import 'package:Layway/util/constants/sizes.dart';
import 'package:Layway/util/constants/text_strings.dart';
import 'package:Layway/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class SuccessScreen extends StatelessWidget {
  const SuccessScreen(
      {super.key,
      required this.image,
      required this.title,
      required this.subTitle,
      required this.onPressed});

  final String image, title, subTitle;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: LayawaySpacingStyle.paddingWithAppBarHeight * 2,
          child: Column(
            children: [
              /// Image
              Image(
                image: AssetImage(image),
                width: LayawayHelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: LayawaySizes.spaceBtwSections,
              ),

              /// Title & Subtitle
              Text(
                title,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: LayawaySizes.spaceBtwItems,
              ),
              Text(
                subTitle,
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
                    onPressed: onPressed,
                    child: const Text(LayawayTexts.layawayContinue)),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
