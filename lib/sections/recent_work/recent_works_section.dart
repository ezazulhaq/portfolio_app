import 'package:flutter/material.dart';
import 'package:portfolio_app/components/hire_me_card.dart';
import 'package:portfolio_app/components/service_title.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/models/RecentWork.dart';
import 'package:portfolio_app/sections/recent_work/components/recent_works_card.dart';

class RecentWorksSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: kDefaultPadding * 6),
      width: double.infinity,
      //height: 600,
      decoration: BoxDecoration(
        color: Color(0xFFF7E8FF),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage('assets/images/recent_work_bg.png'),
        ),
      ),
      child: Column(
        children: [
          Transform.translate(
            offset: Offset(0, -80),
            child: HireMeCard(),
          ),
          ServiceTitle(
            title: 'Recent Works',
            subTitle: 'My Strong Arena',
            color: Color(0xFFFFB100),
          ),
          SizedBox(
            height: kDefaultPadding * 1.5,
          ),
          SizedBox(
            width: 1110,
            child: Wrap(
              spacing: kDefaultPadding,
              runSpacing: kDefaultPadding * 2,
              children: List.generate(
                recentWorks.length,
                (index) => RecentWorksCard(
                  index: index,
                  onTap: () {},
                ),
              ),
            ),
          ),
          SizedBox(
            height: kDefaultPadding * 5,
          ),
        ],
      ),
    );
  }
}
