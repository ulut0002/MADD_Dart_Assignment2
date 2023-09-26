import 'dart:io';
import 'dart:math';

int calculate() {
  return 6 * 7;
}

class Lucky {
  static int _minValue = 0;
  static int _maxValue = 0;
  int randomValue = 0;

  Lucky() {
    // default constructor
    Map<String, String> envVars = Platform.environment;

    envVars.forEach((key, value) {
      if (key == "MIN") {
        try {
          _minValue = int.parse(value);
        } catch (e) {}
      }
      if (key == "MAX") {
        try {
          _maxValue = int.parse(value);
        } catch (e) {}
      }
    });
  }

  // https://api.dart.dev/stable/3.1.2/dart-math/Random-class.html
  int createRandomNumber() {
    try {
      randomValue = Random().nextInt(_maxValue) + _minValue;
    } catch (e) {
      randomValue = 0;
    }
    return randomValue;
  }
}
