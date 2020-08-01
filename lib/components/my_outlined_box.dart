import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';

class MyOutlinedBox extends StatelessWidget {
  const MyOutlinedBox({
    Key key,
    this.text,
    this.imgSrc,
    this.onPressed,
  }) : super(key: key);

  final String imgSrc, text;
  final Function onPressed;

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: OutlineButton(
        onPressed: onPressed,
        padding: EdgeInsets.symmetric(
          vertical: kDefaultPadding,
          horizontal: kDefaultPadding * 2.5,
        ),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(50),
        ),
        borderSide: BorderSide(
          color: Color(0xFFEDEDED),
        ),
        child: Row(
          children: [
            Image.asset(
              imgSrc,
              height: 40,
            ),
            SizedBox(
              width: kDefaultPadding,
            ),
            Text(
              text,
            ),
          ],
        ),
      ),
    );
  }
}
