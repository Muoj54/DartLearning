double divideTwo(double num1, double num2) {
  if (num2 != 0) {
    return num1 / num2;
  } else {
    print("Error: Division by zero is undefined.");
    return double.nan;
  }
}

void main() {
  // for example;
  double result = divideTwo(78,12);
  print('The quotient is: $result');
}