import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/sections/about/about_section.dart';
import 'package:portfolio_app/sections/contact/contact_section.dart';
import 'package:portfolio_app/sections/feedback/feedback_section.dart';
import 'package:portfolio_app/sections/recent_work/recent_works_section.dart';
import 'package:portfolio_app/sections/service/service_section.dart';
import 'package:portfolio_app/sections/topSection/top_section.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            TopSection(),
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            AboutSection(),
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            ServiceSection(),
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            RecentWorksSection(),
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            FeedbackSection(),
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            ContactSection(),
          ],
        ),
      ),
    );
  }
}
