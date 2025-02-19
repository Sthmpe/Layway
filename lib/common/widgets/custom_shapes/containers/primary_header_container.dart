import 'package:Layway/common/widgets/custom_shapes/containers/circular_container.dart';
import 'package:Layway/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:Layway/util/constants/colors.dart';
import 'package:flutter/material.dart';

class LayawayPrimaryHeaderContainer extends StatelessWidget {
  const LayawayPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  final Widget child;

  @override
  Widget build(BuildContext context) {
    return LaywayCurvedEdgeWidget(
      child: Container(
        color: LayawayColors.primary,
        padding: const EdgeInsets.all(0),

        /// -- if [size.isFinte': is not true.in stack] error occured
        child: SizedBox(
          height: 400,
          child: Stack(
            children: [
              /// -- Background Custom Shapes
              Positioned(
                top: -150,
                right: -250,
                child: LayawayCircularContainer(
                  backgroundColor: LayawayColors.textWhite.withOpacity(0.1),
                ),
              ),
          
              Positioned(
                top: 100,
                right: -300,
                child: LayawayCircularContainer(
                  backgroundColor: LayawayColors.textWhite.withOpacity(0.1),
                ),
              ),
          
              child,
            ],
          ),
        ),
      ),
    );
  }
}
