void checkEvenOdd(int number) {
  if (number % 2 == 0) {
    print('$number is even.');
  } else {
    print('$number is odd.');
  }
}

void main() {
  // Call the checkEvenOdd function
  checkEvenOdd(7);
  checkEvenOdd(46);
  checkEvenOdd(11);
}
