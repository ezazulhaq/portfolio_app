import 'package:flutter/material.dart';
import 'package:portfolio_app/constants.dart';
import 'package:portfolio_app/models/Feedback.dart';

class FeedbackCard extends StatefulWidget {
  const FeedbackCard({
    Key key,
    this.index,
    this.onTap,
  }) : super(key: key);

  final int index;
  final Function onTap;

  @override
  _FeedbackCardState createState() => _FeedbackCardState();
}

class _FeedbackCardState extends State<FeedbackCard> {
  bool isHover = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.onTap,
      onHover: (value) {
        setState(() {
          isHover = value;
        });
      },
      hoverColor: Colors.transparent,
      child: AnimatedContainer(
        duration: Duration(
          milliseconds: 200,
        ),
        margin: EdgeInsets.only(top: kDefaultPadding * 3),
        padding: EdgeInsets.symmetric(horizontal: kDefaultPadding),
        height: 350,
        width: 350,
        decoration: BoxDecoration(
          color: feedbacks[widget.index].color,
          borderRadius: BorderRadius.circular(10.0),
          boxShadow: [
            if (isHover) kDefaultCardShadow,
          ],
        ),
        child: Column(
          children: [
            Transform.translate(
              offset: Offset(0, -50),
              child: Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: Colors.white,
                    width: kDefaultPadding / 2,
                  ),
                  boxShadow: [
                    if (!isHover) kDefaultShadow,
                  ],
                  image: DecorationImage(
                    image: AssetImage(
                      feedbacks[widget.index].userPic,
                    ),
                  ),
                ),
              ),
            ),
            Text(
              feedbacks[0].review,
              style: TextStyle(
                fontSize: 18,
                color: kTextColor,
                fontWeight: FontWeight.w300,
                fontStyle: FontStyle.italic,
                height: 1.5,
              ),
            ),
            SizedBox(
              height: kDefaultPadding * 2,
            ),
            Text(
              'Ranold Thomsan',
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
