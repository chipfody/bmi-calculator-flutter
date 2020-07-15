import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'sexButton.dart';
import 'reusableCard.dart';

const bottomContainerHeight = 80.0;
const activeBoxColor = Color(0xFF1D1E33);
const inactiveCardColor = Color(0xFF111328);

class InputPage extends StatefulWidget {
  @override
  _InputPageState createState() => _InputPageState();
}

class _InputPageState extends State<InputPage> {
  Color maleCardColor = inactiveCardColor;
  Color femaleCardColor = inactiveCardColor;

  void updateColor(int gender) {
    if (gender == 1) {
      if (maleCardColor == inactiveCardColor) {
        maleCardColor = activeBoxColor;
      } else {
        maleCardColor = inactiveCardColor;
      }
    } else {
      if (gender == 2) {
        if (femaleCardColor == inactiveCardColor) {
          femaleCardColor = activeBoxColor;
        } else {
          femaleCardColor = inactiveCardColor;
        }
      }
    }
  }

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
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(1);
                      });
                    },
                    child: ReusableCard(
                      colour: maleCardColor,
                      cardChild: SexButton(
                          sex: FontAwesomeIcons.mars, sexText: 'MALE'),
                    ),
                  ),
                ),
                Expanded(
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        updateColor(2);
                      });
                    },
                    child: ReusableCard(
                      colour: femaleCardColor,
                      cardChild: SexButton(
                        sex: FontAwesomeIcons.venus,
                        sexText: 'FEMALE',
                      ),
                    ),
                  ),
                )
              ],
            )),
            Expanded(
              child: ReusableCard(
                colour: activeBoxColor,
              ),
            ),
            Expanded(
                child: Row(
              children: <Widget>[
                Expanded(
                  child: ReusableCard(
                    colour: activeBoxColor,
                  ),
                ),
                Expanded(
                  child: ReusableCard(
                    colour: activeBoxColor,
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
