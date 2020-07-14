import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sexButton.dart';
import 'reusableCard.dart';

const bottomContainerHeight = 80.0;
const innerBoxColor = Color(0xFF1D1E33);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('BMI CALCULATOR'),
        ),
        body: Column(
          children: <Widget>[
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: innerBoxColor,
                    cardChild:
                        SexButton(sex: FontAwesomeIcons.mars, sexText: 'MALE'),
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: innerBoxColor,
                    cardChild: SexButton(
                      sex: FontAwesomeIcons.venus,
                      sexText: 'FEMALE',
                    ),
                  ),
                )
              ],
            )),
            Expanded(
              child: ReusableCard(
                colour: innerBoxColor,
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: innerBoxColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: innerBoxColor,
                  ),
                )
              ],
            )),
            Container(
              color: Color(0xFFEB1555),
              margin: EdgeInsets.only(top: 10.0),
              width: double.infinity,
              height: bottomContainerHeight,
            )
          ],
        ));
  }
}



