import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';

class Menu extends StatefulWidget {
  @override
  _MenuState createState() => _MenuState();
}

class _MenuState extends State<Menu> {
  int selectedItem = 0;
  int hoverItem = 0;
  List<String> menuItems = [
    'Home',
    'About',
    'Services',
    'Portfolio',
    'Testimonial',
    'Contact'
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: kDefaultPadding * 2.5),
      constraints: BoxConstraints(
        maxWidth: 1110,
      ),
      height: 100,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        boxShadow: [
          kDefaultShadow,
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: List.generate(
          menuItems.length,
          (index) => buildMenuItems(index),
        ),
      ),
    );
  }

  Widget buildMenuItems(int index) {
    return InkWell(
      onTap: () {
        setState(() {
          selectedItem = index;
        });
      },
      onHover: (value) {
        setState(() {
          value ? hoverItem = index : hoverItem = selectedItem;
        });
      },
      child: Container(
        constraints: BoxConstraints(
          minWidth: 122,
        ),
        height: 100,
        child: Stack(
          alignment: Alignment.center,
          children: [
            Text(
              menuItems[index],
              style: TextStyle(
                fontSize: 20,
                color: kTextColor,
              ),
            ),
            //HOVER
            AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              left: 0,
              right: 0,
              bottom: selectedItem != index && hoverItem == index ? -20 : -32,
              child: Image.asset('assets/images/Hover.png'),
            ),
            //SELECT
            AnimatedPositioned(
              duration: Duration(milliseconds: 200),
              left: 0,
              right: 0,
              bottom: selectedItem == index ? -2 : -32,
              child: Image.asset('assets/images/Hover.png'),
            ),
          ],
        ),
      ),
    );
  }
}
