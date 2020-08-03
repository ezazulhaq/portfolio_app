import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_app/sections/topSection/components/logon_and_blurbox.dart';
import 'package:portfolio_app/sections/topSection/components/menu.dart';
import 'package:portfolio_app/sections/topSection/components/position_pic.dart';
import 'package:portfolio_app/constants.dart';

class TopSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      alignment: Alignment.center,
      constraints: BoxConstraints(
        maxHeight: 700,
        minHeight: 500,
      ),
      width: double.infinity,
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage('assets/images/background.png'),
        ),
      ),
      child: Container(
        margin: EdgeInsets.only(top: kDefaultPadding),
        width: 1200,
        child: Stack(
          children: [
            LogoAndBlurBox(size: size),
            Positioned(
              bottom: 0,
              right: 120,
              child: PositionPic(),
            ),
            Positioned(
              bottom: 0,
              child: Menu(),
            )
          ],
        ),
      ),
    );
  }
}
