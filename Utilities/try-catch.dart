void divide(int a, int b) {
  try {
    // Attempt division
    double result = a / b;
    print('Result of division: $result');
  } on IntegerDivisionByZeroException {
    // Handle specific exception for division by zero
    print('Error: Cannot divide by zero');
  } catch (e) {
    // Catch any other exception
    print('Error: $e');
  }
}
// Main function - Entry point for the program
void main() {
  // Example usage: Divide 10 by 2
  divide(10, 2); // Output: Result of division: 5.0

  // Example usage: Trigger division by zero
  divide(10, 0); // Output: Error: Cannot divide by zero
}
