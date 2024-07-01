import 'package:amologic_assignment/core/extensions.dart';
import 'package:flutter/material.dart';

class CircularContainer extends StatelessWidget {
  const CircularContainer({
    super.key,
    required this.size,
    required this.color,
    required this.hollow,
  });

  final double size;
  final Color color;
  final bool hollow;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          decoration: BoxDecoration(
            color: color,
            shape: BoxShape.circle,
          ),
          width: size,
          height: size,
        ),
        if (hollow)
          Positioned(
            left: size / 4,
            top: size / 4,
            child: Container(
              decoration: BoxDecoration(
                color: context.colorScheme.primaryContainer,
                borderRadius: BorderRadius.circular(32),
              ),
              width: size / 2,
              height: size / 2,
            ),
          ),
      ],
    );
  }
}
