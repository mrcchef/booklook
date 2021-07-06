import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class IconBackgroud extends StatelessWidget {
  final Color color;
  final Widget widget;
  final double radius;
  final double size;

  IconBackgroud({
    required this.color,
    required this.widget,
    required this.radius,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: size,
      width: size,
      decoration: BoxDecoration(color: color, shape: BoxShape.circle),
      child: Center(child: widget),
    );
  }
}
