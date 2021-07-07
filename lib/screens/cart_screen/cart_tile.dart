import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:look_book/Theme/app_color.dart';
import 'package:look_book/modal/cart_item.dart';
import 'package:look_book/widget/icon_background.dart';

class CartTile extends StatelessWidget {
  final CartItem cartItem;

  CartTile({required this.cartItem});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Positioned(
          left: 0,
          child: Container(
            width: 300,
            child: Column(
              children: [
                Container(
                  padding: EdgeInsets.only(
                    left: 80,
                    right: 5,
                    top: 5,
                    bottom: 5,
                  ),
                  decoration: BoxDecoration(
                      color: AppColor.skinColor,
                      border: Border.all(color: AppColor.skinColor),
                      borderRadius: BorderRadius.circular(10)),
                  child: Column(
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cartItem.title,
                            style: Theme.of(context).textTheme.bodyText2,
                          ),
                          Text(
                            '\u{20B9} ${cartItem.price.toString()}',
                            style: Theme.of(context)
                                .textTheme
                                .bodyText2!
                                .copyWith(fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            cartItem.description,
                            style: Theme.of(context).textTheme.caption,
                          ),
                          Spacer(),
                          if (cartItem.hasDiscount)
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 4),
                              child: Text(
                                cartItem.markedPrice.toString(),
                                style: Theme.of(context)
                                    .textTheme
                                    .caption!
                                    .copyWith(
                                        decoration: TextDecoration.lineThrough),
                              ),
                            ),
                          if (cartItem.hasDiscount)
                            Text(
                              '${cartItem.discountPercent.toString()}% Off',
                              style: Theme.of(context)
                                  .textTheme
                                  .caption!
                                  .copyWith(color: AppColor.orangeColor),
                            ),
                        ],
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    left: 80,
                    right: 5,
                    top: 5,
                    bottom: 5,
                  ),
                  child: Row(
                    children: [
                      IconBackgroud(
                        color: AppColor.lightVioletColor,
                        widget: Text(cartItem.size),
                        size: 40,
                      ),
                      Spacer(),
                      IconBackgroud(
                        color: AppColor.GreenColor.withOpacity(0.1),
                        widget: Icon(
                          Icons.shopping_bag,
                          color: AppColor.GreenColor,
                        ),
                        size: 40,
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      IconBackgroud(
                        color: AppColor.lightRedColor,
                        widget: Icon(
                          cartItem.isFavourite
                              ? Icons.favorite
                              : Icons.favorite_outline,
                          color: AppColor.RedColor,
                        ),
                        size: 40,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 6, vertical: 6),
          height: 110,
          width: 80,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Image.asset(
              cartItem.iconPath,
              fit: BoxFit.cover,
            ),
          ),
        ),
      ],
    );
  }
}
