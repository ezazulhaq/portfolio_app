import 'package:flutter/material.dart';
import 'package:portfolio_app/sections/contact/components/social_card.dart';

class SocialCardFull extends StatelessWidget {
  const SocialCardFull({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        SocialCard(
          color: Color(0xFFD9FFFC),
          imgSrc: 'assets/images/skype.png',
          name: 'Flutter Way',
          onPress: () {},
        ),
        SocialCard(
          color: Color(0xFFE4FFC7),
          imgSrc: 'assets/images/whatsapp.png',
          name: 'Flutter Way',
          onPress: () {},
        ),
        SocialCard(
          color: Color(0xFFE8F0F9),
          imgSrc: 'assets/images/messanger.png',
          name: 'Flutter Way',
          onPress: () {},
        ),
      ],
    );
  }
}
