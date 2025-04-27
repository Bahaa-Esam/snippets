import 'dart:io';
//import 'dart:math';

void main() {
  List data = [
    {"username": "hamed", "password": "H123"},
    {"username": "bahaa", "password": "B321"},
    {"username": "ahmed", "password": "A231"},
  ];
  print("Enter UserName: ");
  String? inUser = stdin.readLineSync();

  print("Enter Password: ");
  String? inPass = stdin.readLineSync();

  var result = data.firstWhere(
    (element) => element['username'] == inUser,
    orElse: () => null,
  );
  if (inUser == null) {
    print("UserName Is Wrong");
  } else if (result['password'] == inPass) {
    print("Signed in Succesfully");
  } else if (inPass == null) {
    print("Signed in Succesfully");
  } else {
    print("Password Wrong");
  }
}
