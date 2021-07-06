import 'package:flutter/material.dart';
import 'package:look_book/Theme/app_color.dart';
import 'package:look_book/widget/cart_app_bar.dart';

class CartScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.skinColor,
      appBar: PreferredSize(
        child: CartAppBar(),
        preferredSize: Size.fromHeight(200),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Container(
          width: 360,
          padding: EdgeInsets.only(left: 40, right: 40, top: 20),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(
              "Items in your bag",
              style: Theme.of(context).textTheme.headline6,
            )
          ]),
        ),
      ),
    );
  }
}
