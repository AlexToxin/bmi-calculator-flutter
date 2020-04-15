import 'dart:math';

class BmiCalculator {
  int height;
  int weight;
  double _bmi;

  BmiCalculator({this.height, this.weight});

  BmiDTO getResult() {
    _bmi = weight / pow(height / 100, 2);

    return BmiDTO(_bmi);
  }
}

class BmiDTO {
  String title;
  String value;
  String description;
  String range;

  double _bmi;

  BmiDTO(this._bmi) {
    if (_bmi >= 25) {
      title = 'Overweight';
      description = 'Overweight description';
      range = 'Overweight range';
    } else if (_bmi > 18.5) {
      title = 'Normal';
      description = 'Normal description';
      range = 'Normal range';
    } else {
      title = 'Underweight';
      description = 'Underweight description';
      range = 'Underweight range';
    }

    value = _bmi.toStringAsFixed(1);
  }
}
