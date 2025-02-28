import 'package:Layway/util/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

class LayawayCartCounterIcon extends StatelessWidget {
  const LayawayCartCounterIcon({
    super.key,
    required this.iconColor,
    required this.onPressed,
  });

  final Color iconColor;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return Stack(
     clipBehavior: Clip.none, // Prevents content from getting cut off
      children: [
        Padding(
          padding: const EdgeInsets.only(right: 10), // Moves icon slightly left
          child: IconButton(
            onPressed: onPressed,
            icon: Icon(
              Iconsax.shopping_bag,
              color: iconColor,
            ),
          ),
        ),
        Positioned(
          top: 6,
          right: 15,
          child: Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              color: LayawayColors.black,
              borderRadius: BorderRadius.circular(100),
            ),
            child: Center(
              child: Text(
                '2',
                style: Theme.of(context).textTheme.labelLarge!.apply(
                      color: LayawayColors.white,
                      fontSizeFactor: 0.8,
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
