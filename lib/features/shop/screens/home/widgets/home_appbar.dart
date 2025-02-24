import 'package:Layway/common/widgets/appBar/appbar.dart';
import 'package:Layway/common/widgets/products/cart/cart_menu_icon.dart';
import 'package:Layway/util/constants/colors.dart';
import 'package:Layway/util/constants/text_strings.dart';
import 'package:flutter/material.dart';

class LayawayHomeAppBar extends StatelessWidget {
  const LayawayHomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayawayAppBar(
      title: Column(
        //mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(LayawayTexts.homeAppbarTitle,
              style: Theme.of(context)
                  .textTheme
                  .labelMedium!
                  .apply(color: LayawayColors.grey)),
          Text(LayawayTexts.homeAppbarSubTitle,
              style: Theme.of(context)
                  .textTheme
                  .headlineMedium!
                  .apply(color: LayawayColors.white)),
        ],
      ),
      actions: [
        LayawayCartCounterIcon(
          onPressed: () {},
          iconColor: LayawayColors.white,
        ),
      ],
    );
  }
}
