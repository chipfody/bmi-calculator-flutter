import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'iconContenr.dart';
import 'reusableCard.dart';
import 'constants.dart';


enum Gender {MALE, FEMALE}

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {

  Gender selectedGender;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.MALE;
                      });
                    },
                    colour: selectedGender == Gender.MALE ? kActiveBoxColor : kInactiveCardColor,
                    cardChild: SexButton(
                        gender: FontAwesomeIcons.mars, genderText: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    onPress: () {
                      setState(() {
                        selectedGender = Gender.FEMALE;
                      });
                    },
                    colour: selectedGender == Gender.FEMALE ? kActiveBoxColor : kInactiveCardColor,
                    cardChild: SexButton(
                      gender: FontAwesomeIcons.venus,
                      genderText: 'FEMALE',
                    ),
                  ),
                )
              ],
            )),
            Expanded(
              child: ReusableCard(
                cardChild: Column(
                  children: <Widget>[
                    Text('HEIGHT', style: kLabelTextStyle),

                  ],
                ),
                colour: kActiveBoxColor,
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: kActiveBoxColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: kActiveBoxColor,
                  ),
                )
              ],
            )),
            Container(
              color: kBottomContainerColor,
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: kBottomContainerHeight,
            )
          ],
        ));
  }
}
