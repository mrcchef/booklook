import 'package:flutter/material.dart';
import 'package:look_book/Theme/app_color.dart';
import 'package:look_book/modal/clothing.dart';
import 'package:look_book/modal/profile_option.dart';
import 'package:look_book/widget/custom_bottom_navigation_bar.dart';
import 'package:look_book/screens/profile_screen/horizontal_clothing_list_widget.dart';
import 'package:look_book/screens/profile_screen/need_assistance_widget.dart';

import 'profile_app_bar.dart';
import 'profile_options_list_widget.dart';
import 'user_profile.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.skinColor,
      appBar: PreferredSize(
        preferredSize: Size(360, 200),
        child: ProfileAppBar(),
      ),
      body: Container(
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(30), topRight: Radius.circular(30))),
        child: Column(
          children: [
            UserProfile(
              imagePath: "asset/png/user.png",
            ),
            HorizontalClothingListWidget(
              clothingList: clothingList,
            ),
            ProfileOptionsListWidget(
              profileOptionList: profileOptionList,
            ),
            NeedAssistanceWidget(
              iconData: Icons.headphones_outlined,
              text: "Need Assistance ?",
              color: AppColor.GreenColor,
            ),
            CustomBottomNavigationBar(
              defaultIndex: 0,
            ),
          ],
        ),
      ),
    );
  }
}
