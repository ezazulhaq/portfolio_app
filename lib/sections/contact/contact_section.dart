import 'package:flutter/material.dart';
import 'package:portfolio_app/components/service_title.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/sections/contact/components/contact_box.dart';

class ContactSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      //height: 600,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Color(0xFFE8F0F9),
        image: DecorationImage(
          fit: BoxFit.fill,
          image: AssetImage(
            'assets/images/bg_img_2.png',
          ),
        ),
      ),
      child: Column(
        children: [
          SizedBox(
            height: kDefaultPadding * 2.5,
          ),
          ServiceTitle(
            title: 'Contact',
            subTitle: 'For Project Inquiry and Information',
            color: Colors.green,
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          ContactBox(),
        ],
      ),
    );
  }
}
