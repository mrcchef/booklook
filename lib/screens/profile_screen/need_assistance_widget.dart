import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class NeedAssistanceWidget extends StatelessWidget {
  final Color color;
  final IconData iconData;
  final String text;

  NeedAssistanceWidget(
      {required this.color, required this.iconData, required this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: DottedBorder(
        borderType: BorderType.RRect,
        radius: Radius.circular(20),
        color: color,
        strokeWidth: 1,
        child: Container(
          height: 60,
          padding: EdgeInsets.symmetric(horizontal: 20),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: color.withOpacity(0.1)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Icon(
                iconData,
                size: 30,
              ),
              Text(
                text,
                style: Theme.of(context).textTheme.headline6,
              )
            ],
          ),
        ),
      ),
    );
  }
}
