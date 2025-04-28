import 'dart:io';
import 'dart:math';

void main() {
  String? again;
  do {
    calPow();

    print('Do you want to try again? (y/n) ');
    again = stdin.readLineSync();
  } while (again == 'y' || again == 'Y');
  print('Thanks for using the program!');
}

void calPow() {
  print('Enter The Number: ');
  String? inputNum = stdin.readLineSync();
  double num = double.parse(inputNum!);

  print('Enter The M/Power: ');
  String? inputM = stdin.readLineSync();
  double m = double.parse(inputM!);

  double power = 1;
  if (m == 0) {
    print(power);
  } else if (m % 1 != 0) {
    print(pow(num, m));
  } else {
    for (int i = 1; i <= m.toInt(); i++) {
      power *= num;
    }
    print(power);
  }
}
