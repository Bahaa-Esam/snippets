import 'dart:io';
import 'dart:math';

void main() {
  print('Enter a');
  String? inputa = stdin.readLineSync();
  double aNum = double.parse(inputa!);

  print('Enter b');
  String? inputb = stdin.readLineSync();
  double bNum = double.parse(inputb!);

  print('Enter c');
  String? inputc = stdin.readLineSync();
  double cNum = double.parse(inputc!);

  double p = (aNum + bNum + cNum) / 2;

  double T =
      pi *
      ((aNum * bNum * cNum) /
          (4 * sqrt(p * (p - aNum) * (p - bNum) * (p - cNum))));
  double area = T * 2;

  print('Area of Circle = $area');
}
