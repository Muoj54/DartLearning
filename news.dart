// 1. Create classes for Student and Teacher
class Student {
  final String name;
  final int age;
  final int gradeLevel;
  // Constructor to initialize student object
  Student(this.name, this.age, this.gradeLevel);
  // 4. Method to print student information
  void printInfo() {
    print("Student Name: $name");
    print("Age: $age");
    print("Grade Level: $gradeLevel");
  }
}
class Teacher {
  final String name;
  final int age;
  final String subject;
  // Constructor to initialize teacher object
  Teacher(this.name, this.age, this.subject);
  // 5. Method to print teacher information
  void printInfo() {
    print("Teacher Name: $name");
    print("Age: $age");
    print("Subject: $subject");
  }
}
// 6. Create objects and call methods
void main() {
  // Create student object
  var student1 = Student("Muo Mwinzi", 25, 17);

  // Create teacher object
  var teacher1 = Teacher("Allan Lenkaa", 26, "Dart with Flutter");
  // Call student's printInfo method
  student1.printInfo();
  print("\n"); // Print a new line for better readability
  // Call teacher's printInfo method
  teacher1.printInfo();
}
