import 'package:flutter/material.dart';

class IconRoundButton extends StatelessWidget {
  final VoidCallback onPressed;
  final IconData icon;

  IconRoundButton({
    required this.onPressed,
    required this.icon
  });

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPressed,
      elevation: 6.0,
      constraints: BoxConstraints.tightFor(
        width: 56.0,
        height: 56.0,
      ),
      fillColor: Color(0x26FFFFFF),
      shape: CircleBorder(),
      child: Icon(icon),
    );
  }
}