import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/custom_edges.dart';
import 'package:t_store/utils/constants/colors.dart';

class TCurvedEdgesWidget extends StatelessWidget {
  const TCurvedEdgesWidget({
    super.key, required this.child,
  });
final Widget child;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper:TCustomCurvedEdges(),
      child: Container(
        color: TColors.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(height: 400,
          child: Stack(
            children: [
              Positioned(top: -150, right: -250, child:  TCircularContainer( 
                backgroundColor: TColors.textWhite.withValues(alpha: 0.1),)),
              Positioned(top: 100, right: -300, child:  TCircularContainer( 
                backgroundColor: TColors.textWhite.withValues(alpha: 0.1),)),
                child,
            ],
          ),
        ),
        ),
    );
  }
}