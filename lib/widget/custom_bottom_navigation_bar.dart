import 'package:flutter/material.dart';
import 'package:look_book/screens/cart_screen/cart_screen.dart';
import 'package:look_book/screens/profile_screen/home_page.dart';
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
                if (selectedButton == 0) return;
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
              onTap: () async {
                if (selectedButton == 1) return;
                selectedButton = await Navigator.of(context).push(
                    MaterialPageRoute(builder: (context) => CartScreen()));
                setState(
                  () {},
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
                if (selectedButton == 2) return;
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
                if (selectedButton == 3) return;
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
