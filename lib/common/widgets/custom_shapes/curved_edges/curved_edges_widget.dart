import 'package:Layway/common/widgets/custom_shapes/curved_edges/curved_edges.dart';
import 'package:flutter/material.dart';

class LaywayCurvedEdgeWidget extends StatelessWidget {
  const LaywayCurvedEdgeWidget({
    super.key,
    this.child,
  });

  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: LayawayCustomCurvedEdges(),
      child: child,
    );
  }
}