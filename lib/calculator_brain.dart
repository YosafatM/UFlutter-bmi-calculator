import 'dart:math';

class CalculatorBrain {
  int height, weight;
  double _bmi;

  CalculatorBrain(this.height, this.weight);

  String getBmi() {
    _bmi = weight / pow(height / 100, 2);
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

  String getName() {
    if (_bmi > 25) {
      return 'Overweight';
    } else if (_bmi > 18.5) {
      return 'Normal';
    } else {
      return 'Low weight';
    }
  }
}
