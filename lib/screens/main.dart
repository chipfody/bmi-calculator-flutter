import 'package:flutter/material.dart';
import 'inputPage.dart';


void main() => runApp(BMICalculator());

class BMICalculator extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primaryColor: Color(0XFF0A0E21),
        scaffoldBackgroundColor: Color(0XFF0A0E21),
        accentColor: Colors.purple,
        textTheme: TextTheme(
          // ignore: deprecated_member_use
          body1: TextStyle(
              color: Colors
                  .white), // Can also use Color(0xFFFFFFFF) for white text
        ),
      ),
      home: InputPage(),
    );
  }
}

