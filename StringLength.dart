int stringLength(String inputString) {
  return inputString.length;
}

void main() {
  // for example;
  String myString = "This is an example of a string";
  int length = stringLength(myString);
  print('The length of the string is: $length');
}