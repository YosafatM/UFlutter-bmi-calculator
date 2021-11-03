import 'package:bmi_calculator/app/core/theme/text_theme.dart';
import 'package:bmi_calculator/app/core/values/colors.dart';
import 'package:bmi_calculator/app/global_widgets/reusable_card.dart';
import 'package:bmi_calculator/app/modules/bmi_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HeightSlider extends StatelessWidget {
  final BMIController controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: ReusableCard(
        color: kActiveCardColor,
        onTap: () {},
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'HEIGHT',
              style: kNormalStyle,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.baseline,
              textBaseline: TextBaseline.alphabetic,
              children: <Widget>[
                Obx(() {
                  return Text(
                    controller.height.value.toString(),
                    style: kBoldStyle,
                  );
                }),
                Text('cm')
              ],
            ),
            Obx(() {
              return SliderTheme(
                data: SliderTheme.of(context).copyWith(
                  activeTrackColor: Colors.white,
                  inactiveTrackColor: Color(0xFF8D8E98),
                  thumbColor: Color(0xFFEB1555),
                  overlayColor: Color(0x29EB1555),
                  thumbShape:
                  RoundSliderThumbShape(enabledThumbRadius: 15.0),
                  overlayShape: RoundSliderOverlayShape(overlayRadius: 30),
                ),
                child: Slider(
                  value: controller.height.value.toDouble(),
                  min: 120,
                  max: 220,
                  onChanged: (double newVal) => controller.height.value = newVal.toInt(),
                ),
              );
            }),
          ],
        ),
      ),
    );
  }
}