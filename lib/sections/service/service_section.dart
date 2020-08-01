import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/models/Service.dart';
import 'package:portfolio_app/sections/service/components/service_card.dart';
import 'package:portfolio_app/components/service_title.dart';

class ServiceSection extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: kDefaultPadding * 2,
      ),
      constraints: BoxConstraints(
        maxWidth: 1110,
      ),
      child: Column(
        children: [
          ServiceTitle(
            color: Color(0xFFFF0000),
            subTitle: 'My Strong Arenas',
            title: 'Service Offering',
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: List.generate(
              services.length,
              (index) {
                return ServiceCard(
                  index: index,
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
