import 'package:flutter/material.dart';
import 'package:look_book/Theme/app_color.dart';
import 'package:look_book/modal/clothing.dart';
import 'package:look_book/widget/clothing_tile.dart';

class HorizontalClothingListWidget extends StatelessWidget {
  final List<Clothing> clothingList;
  HorizontalClothingListWidget({required this.clothingList});

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 140,
        padding: EdgeInsets.only(left: 10),
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          shrinkWrap: true,
          itemBuilder: (context, index) {
            int colorListSize = AppColor.colorList.length;
            return ClothingTile(
              element: clothingList[index],
              color: AppColor.colorList[index % colorListSize],
            );
          },
          itemCount: clothingList.length,
        ));
  }
}
