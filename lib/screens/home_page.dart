import 'package:flutter/material.dart';
import 'package:look_book/Theme/app_color.dart';
import 'package:look_book/modal/clothing.dart';
import 'package:look_book/modal/profile_option.dart';
import 'package:look_book/widget/custom_bottom_navigation_bar.dart';
import 'package:look_book/widget/horizontal_clothing_list_widget.dart';
import 'package:look_book/widget/need_assistance_widget.dart';
import 'package:look_book/widget/profile_app_bar.dart';
import 'package:look_book/widget/icon_background.dart';
import 'package:look_book/widget/profile_options_list_widget.dart';
import 'package:look_book/widget/user_profile.dart';

class HomePage extends StatelessWidget {
  final int callingScreenIndex;

  HomePage({this.callingScreenIndex = 0});

  final List<Clothing> clothingList = [
    Clothing(
        iconPath: "asset/png/Vector.png",
        title: "Size & Fit",
        description: "Your size and fit preferences"),
    Clothing(
        iconPath: "asset/png/mustache.png",
        title: "Style",
        description: "Your style preferences"),
    Clothing(
        iconPath: "asset/png/clothes_hanger.png",
        title: "Closet",
        description: "Your Closet"),
  ];

  final List<ProfileOption> profileOptionList = [
    ProfileOption(
        iconData: Icons.store_outlined,
        title: "All Purchases",
        function: () {}),
    ProfileOption(
        iconData: Icons.help_center_outlined, title: "FAQ", function: () {}),
    ProfileOption(
        iconData: Icons.transform_outlined, title: "Exchange", function: () {}),
    ProfileOption(
        iconData: Icons.lock_clock_outlined,
        title: "Privacy Policy",
        function: () {}),
    ProfileOption(
        iconData: Icons.feed_outlined, title: "About us", function: () {}),
  ];

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
