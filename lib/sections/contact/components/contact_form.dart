import 'package:flutter/material.dart';
import 'package:portfolio_app/components/my_outlined_box.dart';
import 'package:portfolio_app/constants.dart';

class ContactForm extends StatelessWidget {
  const ContactForm({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Wrap(
        spacing: kDefaultPadding * 2,
        runSpacing: kDefaultPadding * 1.5,
        children: [
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: 'Your Name',
                hintText: 'Enter Your Name',
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: 'Email Address',
                hintText: 'Enter Your Email Address',
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: 'Project Type',
                hintText: 'Select Project Type',
              ),
            ),
          ),
          SizedBox(
            width: 470,
            child: TextFormField(
              onChanged: (value) {},
              decoration: InputDecoration(
                labelText: 'Project Budget',
                hintText: 'Select Project Budget',
              ),
            ),
          ),
          TextFormField(
            onChanged: (value) {},
            decoration: InputDecoration(
              labelText: 'Description',
              hintText: 'Write Some Description',
            ),
          ),
          SizedBox(
            height: kDefaultPadding * 2,
          ),
          Center(
            child: MyOutlinedBox(
              onPressed: () {},
              imgSrc: 'assets/images/contact_icon.png',
              text: 'Contact Me!',
            ),
          ),
        ],
      ),
    );
  }
}
