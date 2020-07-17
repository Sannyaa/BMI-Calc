import 'dart:math';
import 'package:flutter/foundation.dart';

class CalculateBrain {
  int height;
  int weight;

  CalculateBrain({@required this.height, @required this.weight});

  double _bmi;

  String calculateBmi() {
    _bmi = weight / pow(height / 100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String getResult() {
    if (_bmi < 18.5)
      return 'underweight';
    else if (_bmi >= 18.5 && _bmi < 25)
      return 'normal';
    else
      return 'overweight';
  }

  String getInterpretation() {
    if (_bmi < 18.5)
      return 'You have a lower than normal body weight. You can eat a bit more.';
    else if (_bmi >= 18.5 && _bmi < 25)
      return 'You have a normal body weight. Good Job!';
    else
      return 'You have a higher than normal body weight. Try to exercise more.';
  }
}
