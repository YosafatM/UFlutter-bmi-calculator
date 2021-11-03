import 'package:bmi_calculator/app/core/theme/text_theme.dart';
import 'package:bmi_calculator/app/core/values/colors.dart';
import 'package:bmi_calculator/app/modules/bmi_controller.dart';
import 'package:bmi_calculator/app/global_widgets/reusable_card.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ResultsPage extends StatelessWidget {
  final BMIController controller = Get.find();

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
              color: kInactiveCardColor,
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Text(
                    controller.getType(),
                    style: TextStyle(
                      color: Colors.green,
                      fontSize: 23,
                    ),
                  ),
                  Text(
                    controller.getBmi(),
                    style: TextStyle(
                      fontSize: 80,
                      fontWeight: FontWeight.w900,
                    ),
                  ),
                  Text(
                    controller.getTip(),
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
            onTap: () => Get.back(),
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
