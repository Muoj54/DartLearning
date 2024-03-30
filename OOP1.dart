import 'dart:io';

// Interface
abstract class Printable {
  void printInfo();
}

// Parent class
class Animal implements Printable {
  String name;

  Animal(this.name);

  @override
  void printInfo() {
    print('Generic animal: $name');
  }

  void eat() {
    print('$name is eating.');
  }
}

// Child class
class Dog extends Animal {
  String breed;

  Dog(String name, this.breed) : super(name);

  @override
  void printInfo() {
    print('Dog: $name, Breed: $breed');
  }

  @override
  void eat() {
    print('$name, a $breed, is eating.');
  }
}

// Class initialized with data from a file
class AnimalReader {
  List<Animal> readAnimalsFromFile(String fileName) {
    List<Animal> animals = [];

    try {
      File file = File(fileName);
      List<String> lines = file.readAsLinesSync();

      for (String line in lines) {
        List<String> parts = line.split(',');
        if (parts.length == 2) {
          String name = parts[0].trim();
          String breed = parts[1].trim();
          animals.add(Dog(name, breed));
        }
      }
    } catch (e) {
      print('Error reading file: $e');
    }

    return animals;
  }
}

// Method demonstrating the use of a loop
void main() {
  AnimalReader reader = AnimalReader();
  List<Animal> animals = reader.readAnimalsFromFile('animals.txt');

  print('Printing animal info:');
  for (Animal animal in animals) {
    animal.eat();
    animal.printInfo(); // Interface method called
  }
}
