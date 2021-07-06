import 'package:flutter/material.dart';
import 'package:look_book/modal/clothing.dart';
import 'package:look_book/widget/icon_background.dart';

class ClothingTile extends StatelessWidget {
  final Clothing element;
  final Color color;

  ClothingTile({required this.element, required this.color});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 10),
      width: 200,
      decoration: BoxDecoration(
          color: color,
          border: Border.all(color: Colors.white),
          borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          IconBackgroud(
              color: Colors.white,
              widget: Image.asset(element.iconPath),
              radius: 60,
              size: 40),
          Text(
            element.title,
            style: Theme.of(context).textTheme.bodyText1,
          ),
          Text(
            element.description,
            style:
                Theme.of(context).textTheme.subtitle2!.copyWith(fontSize: 12),
          )
        ],
      ),
    );
  }
}
