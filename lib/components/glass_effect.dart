import 'dart:ui';
import 'package:flutter/material.dart';

class GlassEffect extends StatelessWidget {
  final Widget child;
  final double topRight, topLeft, bottomRight, bottomLeft;

  const GlassEffect({
    Key? key,
    required this.child,
    this.topRight = 0,
    this.topLeft = 0,
    this.bottomRight = 0,
    this.bottomLeft = 0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(topLeft),
        topRight: Radius.circular(topRight),
        bottomLeft: Radius.circular(bottomLeft),
        bottomRight: Radius.circular(bottomRight),
      ),
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
        child: child,
      ),
    );
  }
}
