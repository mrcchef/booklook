import 'package:flutter/material.dart';
import 'package:look_book/modal/cart_item.dart';
import 'package:look_book/widget/cart_tile.dart';

class CartItemListWidget extends StatelessWidget {
  final List<CartItem> cartItemList;

  CartItemListWidget({required this.cartItemList});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20),
      child: ListView.separated(
          shrinkWrap: true,
          itemBuilder: (context, index) {
            return CartTile(cartItem: cartItemList[index]);
          },
          separatorBuilder: (context, index) {
            return Container(
              height: 10,
              color: Colors.white,
            );
          },
          itemCount: cartItemList.length),
    );
  }
}
