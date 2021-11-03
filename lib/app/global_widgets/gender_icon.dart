import 'package:bmi_calculator/app/core/theme/text_theme.dart';
import 'package:flutter/material.dart';

class GenderIcon extends StatelessWidget {
  final IconData icon;
  final String text;

  GenderIcon({
    required this.icon,
    required this.text
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80.0,
        ),
        SizedBox(
          height: 15.0,
        ),
        Text(
          text,
          style: kNormalStyle,
        ),
      ],
    );
  }
}
