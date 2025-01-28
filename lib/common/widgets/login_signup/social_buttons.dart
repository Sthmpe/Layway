import 'package:Layway/util/constants/colors.dart';
import 'package:Layway/util/constants/image_strings.dart';
import 'package:Layway/util/constants/sizes.dart';
import 'package:flutter/material.dart';

class LayawaySocialButtons extends StatelessWidget {
  const LayawaySocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: LayawayColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: LayawaySizes.iconMd,
              height: LayawaySizes.iconMd,
              image: AssetImage(LayawayImages.google),
            ),
          ),
        ),
        const SizedBox(
          width: LayawaySizes.spaceBtwItems,
        ),
        Container(
          decoration: BoxDecoration(
              border: Border.all(color: LayawayColors.grey),
              borderRadius: BorderRadius.circular(100)),
          child: IconButton(
            onPressed: () {},
            icon: const Image(
              width: LayawaySizes.iconMd,
              height: LayawaySizes.iconMd,
              image: AssetImage(LayawayImages.facebook),
            ),
          ),
        ),
      ],
    );
  }
}
