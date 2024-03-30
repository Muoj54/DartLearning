// Use the built-in constant for pi
final double pi = 3.141592653589793;

// Interface for shapes
abstract class Shape {
  double get area; // Getter for area calculation (abstract)
}

// Class representing a circle, inheriting from Shape
class Circle implements Shape {
  final double radius;

  Circle(this.radius);

  @override
  double get area => pi * radius * radius;

  @override
  String toString() => "Circle(radius: $radius)";
}

// Class representing a rectangle, inheriting from Shape
class Rectangle implements Shape {
  final double width;
  final double height;

  Rectangle(this.width, this.height);

  @override
  double get area => width * height;

  @override
  String toString() => "Rectangle(width: $width, height: $height)";

  // Method for detailed string representation (specific to rectangles)
  String toStringDetailed() {
    return "Rectangle with width: $width, height: $height, area: ${area.toStringAsFixed(2)}";
  }
}

// Function to read data from a file (simulated)
List<String> readDataFromFile(String filePath) {
  // Simulate reading data from a file
  // (You can replace this with actual file reading logic)
  return ["5.0", "10.0", "Rectangle"];
}

void main() {
  // Read data from a simulated file
  var data = readDataFromFile("data.txt");

  // Create a shape object based on the data
  Shape? shape;
  if (data.length == 3 && data[2] == "Circle") {
    shape = Circle(double.parse(data[0]));
  } else if (data.length == 3 && data[2] == "Rectangle") {
    shape = Rectangle(double.parse(data[0]), double.parse(data[1]));
  } else {
    print("Invalid data format in file.");
  }

  if (shape != null) {
    print("Created shape: $shape");
    print("Area of the shape: ${shape.area}");

    // Example loop: Print multiples of the shape's area up to 10
    for (var i = 1; i <= 10; i++) {
      print("Multiple $i: ${(i * shape.area).toStringAsFixed(2)}");
    }

    // Call toStringDetailed if shape is a rectangle
    if (shape is Rectangle) {
      print(shape.toStringDetailed());
    }
  }
}
