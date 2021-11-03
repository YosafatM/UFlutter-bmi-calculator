import 'package:bmi_calculator/app/core/theme/text_theme.dart';
import 'package:bmi_calculator/app/core/values/colors.dart';
import 'package:bmi_calculator/app/global_widgets/icon_round_button.dart';
import 'package:bmi_calculator/app/global_widgets/reusable_card.dart';
import 'package:bmi_calculator/app/modules/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:get/get.dart';

class WeightAndAge extends StatelessWidget {
  final BMIController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: <Widget>[
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'WEIGHT',
                    style: kNormalStyle,
                  ),
                  Obx(() {
                    return Text(
                      controller.weight.value.toString(),
                      style: kBoldStyle,
                    );
                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconRoundButton(
                        onPressed: () => controller.weight.value--,
                        icon: FontAwesomeIcons.minus,
                      ),
                      IconRoundButton(
                        onPressed: () => controller.weight.value++,
                        icon: FontAwesomeIcons.plus,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ReusableCard(
              color: kActiveCardColor,
              onTap: () {},
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    'AGE',
                    style: kNormalStyle,
                  ),
                  Obx(() {
                    return Text(
                      controller.age.value.toString(),
                      style: kBoldStyle,
                    );
                  }),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      IconRoundButton(
                        onPressed: () => controller.age.value--,
                        icon: FontAwesomeIcons.minus,
                      ),
                      IconRoundButton(
                        onPressed: () => controller.age.value++,
                        icon: FontAwesomeIcons.plus,
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}