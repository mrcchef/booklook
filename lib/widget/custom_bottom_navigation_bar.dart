import 'package:flutter/material.dart';
import 'package:look_book/screens/cart_screen.dart';
import 'package:look_book/screens/home_page.dart';
import 'package:look_book/widget/icon_background.dart';

class CustomBottomNavigationBar extends StatefulWidget {
  final defaultIndex;

  CustomBottomNavigationBar({required this.defaultIndex});

  @override
  _CustomBottomNavigationBarState createState() =>
      _CustomBottomNavigationBarState();
}

class _CustomBottomNavigationBarState extends State<CustomBottomNavigationBar> {
  late int selectedButton;

  @override
  void initState() {
    selectedButton = widget.defaultIndex;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        decoration: BoxDecoration(
            color: Colors.black,
            // border: Border.all(),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20))),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            InkWell(
              onTap: () {
                if (selectedButton != 0)
                  Navigator.of(context).pushAndRemoveUntil(
                      MaterialPageRoute(builder: (context) => HomePage()),
                      (route) => false);
                setState(() {
                  selectedButton = 0;
                });
              },
              child: IconBackgroud(
                  color: selectedButton == 0 ? Colors.white : Colors.black,
                  widget: Icon(
                    Icons.home_outlined,
                    color: selectedButton == 0 ? Colors.black : Colors.white,
                    size: 30,
                  ),
                  size: 30),
            ),
            InkWell(
              onTap: () {
                setState(
                  () async {
                    selectedButton = await Navigator.of(context).push(
                        MaterialPageRoute(builder: (context) => CartScreen()));
                    ;
                  },
                );
              },
              child: IconBackgroud(
                  color: selectedButton == 1 ? Colors.white : Colors.black,
                  widget: Icon(
                    Icons.shopping_bag_outlined,
                    color: selectedButton == 1 ? Colors.black : Colors.white,
                    size: 30,
                  ),
                  size: 30),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectedButton = 2;
                });
              },
              child: IconBackgroud(
                  color: selectedButton == 2 ? Colors.white : Colors.black,
                  widget: Icon(
                    Icons.favorite_outline,
                    color: selectedButton == 2 ? Colors.black : Colors.white,
                    size: 30,
                  ),
                  size: 30),
            ),
            InkWell(
              onTap: () {
                setState(() {
                  selectedButton = 3;
                });
              },
              child: IconBackgroud(
                  color: selectedButton == 3 ? Colors.white : Colors.black,
                  widget: Icon(
                    Icons.account_circle_outlined,
                    color: selectedButton == 3 ? Colors.black : Colors.white,
                    size: 30,
                  ),
                  size: 30),
            ),
          ],
        ),
      ),
    );
  }
}
