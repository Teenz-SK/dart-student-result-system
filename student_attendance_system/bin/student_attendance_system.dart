

import 'dart:io';

void main() {

  List<String> students = [
    "Sanju",
    "Rahul",
    "Amit",
    "Ravi",
    "Kiran",
    "Neha",
    "Pooja",
    "Arjun",
    "Sneha",
    "Rohit"
  ];

  List<String> attendance = List.filled(students.length, "Not Marked");

  while (true) {

    print("\n===== Student Attendance System =====");
    print("1. Mark Attendance");
    print("2. Show Attendance");
    print("3. Exit");

    print("Enter your choice:");

    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {

      for (int i = 0; i < students.length; i++) {

        print("\nStudent: ${students[i]}");
        print("1. Present");
        print("2. Absent");

        int status = int.parse(stdin.readLineSync()!);

        if (status == 1) {
          attendance[i] = "Present";
        }
        else if (status == 2) {
          attendance[i] = "Absent";
        }
        else {
          print("Invalid choice");
        }

      }

      print("\nAttendance marked successfully.");

    }

    else if (choice == 2) {

      int presentCount = 0;
      int absentCount = 0;

      print("\n===== Attendance List =====");

      for (int i = 0; i < students.length; i++) {

        print("${students[i]} : ${attendance[i]}");

        if (attendance[i] == "Present") {
          presentCount++;
        }
        else if (attendance[i] == "Absent") {
          absentCount++;
        }

      }

      print("\nTotal Present: $presentCount");
      print("Total Absent: $absentCount");

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