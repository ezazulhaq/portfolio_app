import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';

class DownloadButton extends StatelessWidget {
  const DownloadButton({
    Key key,
    this.imgSrc,
    this.text,
    this.onPressed,
  }) : super(key: key);

  final Function onPressed;
  final String imgSrc, text;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding,
        horizontal: kDefaultPadding * 2.5,
      ),
      color: Color(0xFFE8F0F9),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(50.0),
      ),
      onPressed: () {},
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
    );
  }
}
