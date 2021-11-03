import 'package:bmi_calculator/app/core/values/colors.dart';
import 'package:bmi_calculator/app/global_widgets/gender_icon.dart';
import 'package:bmi_calculator/app/global_widgets/reusable_card.dart';
import 'package:bmi_calculator/app/modules/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class GenderPicker extends StatelessWidget {
  final BMIController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Expanded(
            child: Obx(() => ReusableCard(
                color: controller.isMale
                    ? kActiveCardColor
                    : kInactiveCardColor,
                child: GenderIcon(
                  icon: FontAwesomeIcons.mars,
                  text: 'MALE',
                ),
                onTap: () => controller.gender = 0,
              ),
            ),
          ),
          Expanded(
            child: Obx(() => ReusableCard(
                color: !controller.isMale
                    ? kActiveCardColor
                    : kInactiveCardColor,
                child: GenderIcon(
                  icon: FontAwesomeIcons.venus,
                  text: 'FEMALE',
                ),
                onTap: () => controller.gender = 1,
              ),
            ),
          ),
        ],
      ),
    );
  }
}