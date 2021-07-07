import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ProfileOption {
  // final String iconPath;
  final IconData iconData;
  final String title;
  final Function function;

  ProfileOption(
      {required this.iconData, required this.title, required this.function});
}

final List<ProfileOption> profileOptionList = [
  ProfileOption(
      iconData: Icons.store_outlined, title: "All Purchases", function: () {}),
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
