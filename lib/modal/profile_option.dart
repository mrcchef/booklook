import 'package:flutter/cupertino.dart';

class ProfileOption {
  // final String iconPath;
  final IconData iconData;
  final String title;
  final Function function;

  ProfileOption(
      {required this.iconData, required this.title, required this.function});
}
