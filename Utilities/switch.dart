// Function using switch statement
String evaluateString(String value) {
  switch (value) {
    case "Hello":
      return "Welcome!";
    case "Goodbye":
      return "See you later!";
    default:
      return "Unknown value";
  }
}
void main() {
  var greeting = evaluateString("Hello");
  print(greeting); // Output: Welcome!
}
