import 'package:flutter/material.dart';
import 'package:look_book/Theme/app_color.dart';
import 'package:look_book/modal/cart_item.dart';
import 'package:look_book/widget/cart_app_bar.dart';
import 'package:look_book/widget/cart_item_list_widget.dart';
import 'package:look_book/widget/custom_bottom_navigation_bar.dart';
import 'package:look_book/widget/total_cart_value_widget.dart';

class CartScreen extends StatelessWidget {
  final int callingScreenIndex;

  CartScreen({this.callingScreenIndex = 0});
  final List<CartItem> cartItemList = [
    CartItem(
        iconPath: "asset/images/breezy_shirt.jpg",
        title: "Breezy Shirt",
        description: "House of Rare",
        price: 2300,
        size: "XXLL",
        isFavourite: false),
    CartItem(
        iconPath: "asset/images/lenin_chino.jpg",
        title: "Lenin Chino",
        description: "HighLander",
        price: 658,
        size: "32",
        isFavourite: true),
    CartItem(
        iconPath: "asset/images/white_sneakers.jpg",
        title: "White Sneakers",
        description: "Bennetton",
        price: 1658,
        size: "9",
        isFavourite: false),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.skinColor,
      appBar: PreferredSize(
        child: CartAppBar(
          callingScreenIndex: callingScreenIndex,
        ),
        preferredSize: Size.fromHeight(200),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Container(
          width: 360,
          padding: EdgeInsets.only(top: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Text(
                  "Items in your bag",
                  style: Theme.of(context).textTheme.headline6,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: CartItemListWidget(
                  cartItemList: cartItemList,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Container(
                  height: 1,
                  color: AppColor.skinColor,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: TotalCartValueWidget(),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 40),
                child: Center(
                  child: Container(
                    margin: const EdgeInsets.symmetric(vertical: 10),
                    padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.all(Radius.circular(20)),
                    ),
                    child: Text(
                      "Check Out",
                      style: Theme.of(context)
                          .textTheme
                          .bodyText1!
                          .copyWith(color: Colors.white),
                    ),
                  ),
                ),
              ),
              CustomBottomNavigationBar(
                defaultIndex: 1,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
