import 'package:flutter/material.dart';
import 'package:portfolio_app/components/download_button.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/sections/about/components/about_section_text.dart';
import 'package:portfolio_app/sections/about/components/about_text_with_sign.dart';
import 'package:portfolio_app/sections/about/components/experience_card.dart';
import 'package:portfolio_app/components/my_outlined_box.dart';

class AboutSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: kDefaultPadding * 2),
      constraints: BoxConstraints(
        maxWidth: 1110,
      ),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AboutTextWithSign(),
              Expanded(
                child: AboutSectionText(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                ),
              ),
              ExperienceCard(
                numOfExp: '08',
              ),
              Expanded(
                child: AboutSectionText(
                  text:
                      'Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore mag aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.',
                ),
              ),
            ],
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyOutlinedBox(
                onPressed: () {},
                imgSrc: 'assets/images/hand.png',
                text: 'Hire me',
              ),
              SizedBox(
                width: kDefaultPadding * 3,
              ),
              DownloadButton(
                imgSrc: 'assets/images/download.png',
                onPressed: () {},
                text: 'Download CV',
              ),
            ],
          ),
        ],
      ),
    );
  }
}
