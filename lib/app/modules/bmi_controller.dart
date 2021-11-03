import 'dart:math';

import 'package:get/get.dart';

enum Gender {
  male,
  female
}

class BMIController extends GetxController {
  Rx<Gender> _gender = Gender.male.obs;
  Rx<int> height = 180.obs;
  Rx<int> weight = 70.obs;
  Rx<int> age = 18.obs;
  double _bmi = 0;

  set gender(int value){
    _gender.value = value == 0 ? Gender.male : Gender.female;
  }

  get isMale => _gender.value == Gender.male;

  String getBmi() {
    _bmi = weight.value / pow(height.value / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getTip() {
    if (_bmi > 25) {
      return 'You should do more exercise!';
    } else if (_bmi > 18.5) {
      return 'You\'re perfect the way you are!';
    } else {
      return 'Start to eat more, pal!';
    }
  }

  String getType() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Low weight';
    }
  }
}
