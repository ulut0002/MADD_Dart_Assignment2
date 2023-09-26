import 'package:hybrid2/hybrid2.dart' as hybrid2;

void main(List<String> arguments) {
  print("Lucky Class - Random numbers");
  print("############################");
  var lucky = hybrid2.Lucky();
  print("Number 1 - ${lucky.createRandomNumber()}");
  print("Number 2 - ${lucky.createRandomNumber()}");
  print("Number 3 - ${lucky.createRandomNumber()}");
}
