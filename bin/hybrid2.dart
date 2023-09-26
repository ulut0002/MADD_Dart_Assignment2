/**
 * 
 * Serdar Ulutas
 * Dart Assignment#2
 * https://mad9135.github.io/f2023/modules/hybrid/dart/exercises.html#exercise-2
 * 
 * 
 */

import 'package:hybrid2/hybrid2.dart' as hybrid2;

void main(List<String> arguments) {
  for (var name in arguments) {
    var lucky = hybrid2.Lucky();
    name = name.substring(0, 1).toUpperCase() + name.substring(1).toLowerCase();

    print("Hello $name. Your lucky number is ${lucky.createRandomNumber()}");
  }
}
