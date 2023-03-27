import 'package:flutter/material.dart';

import '../../../configs/themes/app_color.dart';

class ProgressLine extends StatelessWidget {
  const ProgressLine({
    super.key,
    this.color = primaryColorLight,
    required this.percentage,
  });

  final Color color;
  final int percentage;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 5,
          width: double.infinity,
          decoration: BoxDecoration(
            color: color.withOpacity(0.1),
            borderRadius: BorderRadius.circular(10),
          ),
        ),
        LayoutBuilder(
          builder: (context, constraints) {
            return Container(
              height: 5,
              width: constraints.maxWidth * (percentage / 100),
              decoration: BoxDecoration(
                color: color,
                borderRadius: BorderRadius.circular(10),
              ),
            );
          },
        )
      ],
    );
  }
}
