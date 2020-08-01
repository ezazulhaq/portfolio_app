import 'package:flutter/material.dart';
import 'package:portfolio_app/components/service_title.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/models/Feedback.dart';
import 'package:portfolio_app/sections/feedback/components/feedback_card.dart';

class FeedbackSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        maxWidth: 1110,
      ),
      child: Column(
        children: [
          ServiceTitle(
            title: 'Feedback Reveived',
            subTitle: 'Client\'s Testimonials that Inspires me a lot',
            color: Color(0xFF00B1FF),
          ),
          SizedBox(
            height: kDefaultPadding,
          ),
          Wrap(
            spacing: kDefaultPadding,
            runSpacing: kDefaultPadding * 2,
            children: List.generate(
              feedbacks.length,
              (index) => FeedbackCard(
                index: index,
                onTap: () {},
              ),
            ),
          )
        ],
      ),
    );
  }
}
