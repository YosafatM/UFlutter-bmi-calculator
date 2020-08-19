import 'package:bmi_calculator/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'constants.dart';

class ResultsPage extends StatelessWidget {
  final String type, bmi, tip;

  ResultsPage({this.type, this.bmi, this.tip});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(
            'Your Result',
            textAlign: TextAlign.center,
            style: kBoldStyle,
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    type,
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 23,
                    ),
                  ),
                  Text(
                    bmi,
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    tip,
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.pop(context);
            },
            child: Container(
              height: 80.0,
              width: double.infinity,
              color: Color(0xFFEB1555),
              child: Center(
                child: Text(
                  'RE-CALCULATE',
                  style: kMediumStyle,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
