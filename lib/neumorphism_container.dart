import 'package:flutter/material.dart';

class NeumorphismContainer extends StatelessWidget {
  Widget? child;
  Color color;
  Color shadowTopLeft;
  Color shadowBottomRight;

  NeumorphismContainer({
    super.key,
    required this.child,
    required this.color,
    required this.shadowTopLeft,
    required this.shadowBottomRight,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(44),
        boxShadow: [
          BoxShadow(
            color: shadowBottomRight,
            offset: const Offset(4, 4),
            blurRadius: 16,
          ),
          BoxShadow(
            color: shadowTopLeft,
            offset: const Offset(-4, -4),
            blurRadius: 16,
          ),
        ],
      ),
      child: child,
    );
  }
}
