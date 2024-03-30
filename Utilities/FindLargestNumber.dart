// Function to find the largest number in a list
int findLargest(List<int> numbers) {
  if (numbers.isEmpty) {
    throw Exception("List is empty"); // Throw exception for empty list
  }
  var largest = numbers[0];
  for (var number in numbers) {
    if (number > largest) {
      largest = number;
    }
  }
  return largest;
}
void main() {
  try {
    var largestNumber = findLargest([864, 78, 12, 9715]);
    print("Largest number: $largestNumber"); // Output: Largest number: 15
  } on Exception catch (e) {
    print("Error: $e"); // Catch and print the exception message
  }
}
