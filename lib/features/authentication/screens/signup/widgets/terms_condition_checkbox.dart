import 'package:Layway/util/constants/colors.dart';
import 'package:Layway/util/constants/text_strings.dart';
import 'package:Layway/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LayawayTermsAndConditionCheckBox extends StatelessWidget {
  const LayawayTermsAndConditionCheckBox({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = LayawayHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        SizedBox(
          width: 24,
          height: 24,
          child: Checkbox(value: true, onChanged: (value) {}),
        ),
        Text.rich(
          TextSpan(children: [
            TextSpan(
                text: '${LayawayTexts.iAgreeTo} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: LayawayTexts.privacyPolicy,
                style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: dark ? LayawayColors.white : LayawayColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? LayawayColors.white : LayawayColors.primary,
                    )),
            TextSpan(
                text: ' ${LayawayTexts.and} ',
                style: Theme.of(context).textTheme.bodySmall),
            TextSpan(
                text: LayawayTexts.termsOfUse,
                style: Theme.of(context).textTheme.bodySmall!.apply(
                      color: dark ? LayawayColors.white : LayawayColors.primary,
                      decoration: TextDecoration.underline,
                      decorationColor:
                          dark ? LayawayColors.white : LayawayColors.primary,
                    )),
          ]),
        ),
      ],
    );
  }
}
