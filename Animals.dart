import 'dart:io';

// 1. An object-oriented model that uses classes and inheritance
// Parent class
class Animal {
  String name;

  Animal(this.name);

  void makeSound() {
    print('Animal $name makes a sound.');
  }
}

// 2. A class that implements an interface
// Interface
abstract class Printable {
  void printInfo();
}

// Child class implementing an interface
class Dog extends Animal implements Printable {
  String breed;

  Dog(String name, this.breed) : super(name);

  // 3. A class that overrides an inherited method
  @override
  void makeSound() {
    print('Dog $name barks.');
  }

  // Method required by Printable interface
  @override
  void printInfo() {
    print('Dog: $name, Breed: $breed');
  }
}

// 4. An instance of a class that is initialized with data from a file
class AnimalReader {
  List<Dog> readDogsFromFile(String fileName) {
    List<Dog> dogs = [];

    try {
      File file = File(fileName);
      if (!file.existsSync()) {
        throw FileSystemException('File not found: $fileName');
      }

      List<String> lines = file.readAsLinesSync();

      for (String line in lines) {
        List<String> parts = line.split(',');
        if (parts.length == 2) {
          String name = parts[0].trim();
          String breed = parts[1].trim();
          dogs.add(Dog(name, breed));
        }
      }
    } catch (e) {
      print('Error reading file: $e');
    }

    return dogs;
  }
}

// 5. A method that demonstrates the use of a loop
void main() {
  AnimalReader reader = AnimalReader();
  List<Dog> dogs = reader.readDogsFromFile('dogs.txt');

  print('Printing dog info:');
  for (Dog dog in dogs) {
    dog.makeSound(); 
    dog.printInfo(); 
  }
}
