import 'package:Layway/util/constants/colors.dart';
import 'package:Layway/util/helpers/helper_functions.dart';
import 'package:flutter/material.dart';

class LayawayLoginDivider extends StatelessWidget {
  const LayawayLoginDivider({super.key, required this.dividerText});

  final String dividerText;

  @override
  Widget build(BuildContext context) {
    final dark = LayawayHelperFunctions.isDarkMode(context);

    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
            child: Divider(
          color: dark ? LayawayColors.darkGrey : LayawayColors.grey,
          thickness: 0.5,
          indent: 60,
          endIndent: 5,
        )),
        Text(
          dividerText,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
            child: Divider(
          color: dark ? LayawayColors.darkGrey : LayawayColors.grey,
          thickness: 0.5,
          indent: 5,
          endIndent: 60,
        )),
      ],
    );
  }
}
