import 'package:flutter/material.dart';
import 'package:look_book/widget/icon_background.dart';

class CartAppBar extends StatelessWidget with PreferredSizeWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 140,
      padding: EdgeInsets.only(
        left: 20,
        right: 20,
        top: 40,
      ),
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 10, horizontal: 10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            IconBackgroud(
              color: Colors.black,
              widget: Icon(
                Icons.arrow_back_ios_new_outlined,
                color: Colors.white,
              ),
              radius: 60,
              size: 40,
            ),
            Text(
              "Anand's Bag",
              style: Theme.of(context)
                  .textTheme
                  .headline5!
                  .copyWith(fontWeight: FontWeight.w500, fontSize: 20),
            ),
            IconBackgroud(
              color: Color(0xffE9E4FC),
              widget: Icon(
                Icons.notifications_outlined,
              ),
              radius: 60,
              size: 40,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);
}
