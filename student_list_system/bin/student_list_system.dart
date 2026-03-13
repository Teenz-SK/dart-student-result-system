import 'dart:io';

void main() {

  List<String> students = [
    "Sanju",
    "Rahul",
    "Amit",
    "Ravi"
  ];

  while (true) {

    print("\n===== Student List System =====");
    print("1. Display Students");
    print("2. Add Student");
    print("3. Exit");

    print("Enter your choice:");

    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {

      print("\nStudent List:");

      for (var student in students) {
        print(student);
      }

    }
    else if (choice == 2) {

      print("Enter student name:");
      String name = stdin.readLineSync()!;

      students.add(name);

      print("Student added successfully.");

    }
    else if (choice == 3) {

      print("Exiting program...");
      break;

    }
    else {

      print("Invalid choice.");

    }

  }

}