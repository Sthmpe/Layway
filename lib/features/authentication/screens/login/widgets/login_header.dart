import 'package:Layway/util/constants/image_strings.dart';
import 'package:Layway/util/constants/sizes.dart';
import 'package:Layway/util/constants/text_strings.dart';
import 'package:Layway/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LayawayLoginHeader extends StatelessWidget {
  const LayawayLoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = LayawayHelperFunctions.isDarkMode(context);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Image(
          height: 150,
          image: AssetImage(
              dark ? LayawayImages.lightAppLogo : LayawayImages.darkAppLogo),
        ),
        Text(
          LayawayTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: LayawaySizes.sm,
        ),
        Text(
          LayawayTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
      ],
    );
  }
}
