import 'package:flutter/material.dart';

class Clothing {
  final String iconPath;
  final String title;
  final String description;

  Clothing(
      {required this.iconPath, required this.title, required this.description});
}

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
