import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';

class AboutTextWithSign extends StatelessWidget {
  const AboutTextWithSign({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'About \nmy Story',
          style: Theme.of(context).textTheme.displayMedium.copyWith(
                fontWeight: FontWeight.bold,
                color: Colors.black,
              ),
        ),
        SizedBox(
          height: kDefaultPadding * 2,
        ),
        Image.asset('assets/images/sign.png'),
      ],
    );
  }
}
