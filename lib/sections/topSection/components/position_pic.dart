import 'package:flutter/material.dart';

class PositionPic extends StatelessWidget {
  const PositionPic({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 639,
        maxHeight: 860,
      ),
      child: Image.asset(
        'assets/images/FaceOnly_noBG.png',
      ),
    );
  }
}
