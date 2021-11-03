import 'package:bmi_calculator/app/core/theme/text_theme.dart';
import 'package:bmi_calculator/app/modules/bmi_controller.dart';
import 'package:bmi_calculator/app/modules/results_module/results_page.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'local_widgets/gender_picker.dart';
import 'local_widgets/height_slider.dart';
import 'local_widgets/weight_and_age.dart';

class InputPage extends StatelessWidget {
  final BMIController controller = BMIController();

  @override
  Widget build(BuildContext context) {
    Get.put(controller);

    return Scaffold(
      appBar: AppBar(
        title: Text('BMI CALCULATOR'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          GenderPicker(),
          HeightSlider(),
          WeightAndAge(),
          GestureDetector(
            onTap: () => Get.to(() => ResultsPage()),
            child: Container(
              height: 80.0,
              width: double.infinity,
              color: Color(0xFFEB1555),
              child: Center(
                child: Text(
                  'CALCULATE',
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
