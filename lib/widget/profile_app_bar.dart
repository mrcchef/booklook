import 'package:flutter/material.dart';
import 'package:look_book/widget/icon_background.dart';

class ProfileAppBar extends StatelessWidget with PreferredSizeWidget {
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
            Text("Profile", style: Theme.of(context).textTheme.headline5),
            IconBackgroud(
              color: Color(0xffE9E4FC),
              widget: Icon(
                Icons.notifications,
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
