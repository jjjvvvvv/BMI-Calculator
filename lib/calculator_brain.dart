import 'dart:math';

class CalculatorBrain {
  CalculatorBrain({this.weight, this.height});

  final int height;
  final int weight;

  double _bmi2;

  String calculateBMI() {
    double bmi = weight / pow(height, 2);
    _bmi2 = bmi * 703;
    return _bmi2.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi2 >= 25) {
      return 'Overweight';
    } else if (_bmi2 > 18.5) {
      return 'Normal';
    } else {
      return 'Underweight';
    }
  }

  String getInterpretation() {
    if (_bmi2 >= 25) {
      return 'You have a higher than normal body weight. Try to eat well and exercise!';
    } else if (_bmi2 > 18.5) {
      return 'You have a normal body weight. Good job!';
    } else {
      return 'You have a lower than normal body weight. Try to increase your diet!';
    }
  }
}
