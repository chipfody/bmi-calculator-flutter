import 'package:flutter/material.dart';
import 'constants.dart';


class SexButton extends StatelessWidget {
  final IconData gender;
  final String genderText;

  SexButton({this.gender, this.genderText});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          gender,
          color: Colors.white,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          genderText,
          style: kLabelTextStyle,
        )
      ],
    );
  }
}