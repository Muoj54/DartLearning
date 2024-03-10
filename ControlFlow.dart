import 'dart:io';

void main() {
  print('Enter a number:');
  String userInput = stdin.readLineSync()!;
  
  double number = double.tryParse(userInput) ?? 0;


  if (number > 10) {
    print('Your number is greater than 10');
  } else if (number < 10) {
    print('Your number is less than 10');
  } else {
    print('Your number is equal to 10');
  }
}