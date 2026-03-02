import 'dart:io';

class Student {

  String name;
  int rollNumber;
  double marks;

  Student(this.name, this.rollNumber, this.marks);

  String calculateGrade(){

    if(marks >= 90){
      return "A+";
    }
    else if(marks >= 75){
      return "A";
    }
    else if(marks >= 60){
      return "B";
    }
    else if(marks >= 40){
      return "C";
    }
    else{
      return "Fail";
    }

  }

  void displayStudent(){

    print("Name: $name");
    print("Roll Number: $rollNumber");
    print("Marks: $marks");
    print("Grade: ${calculateGrade()}");
    print("---------------------");

  }

}

void main(){

  List<Student> students = [];

  print("Enter number of students:");

  int n = int.parse(stdin.readLineSync()!);

  for(int i=1; i<=n; i++){

    print("\nEnter Student $i Name:");
    String name = stdin.readLineSync()!;

    print("Enter Roll Number:");
    int roll = int.parse(stdin.readLineSync()!);

    print("Enter Marks:");
    double marks = double.parse(stdin.readLineSync()!);

    students.add(Student(name, roll, marks));

  }

  print("\n===== Student List =====");

  for(var student in students){

    student.displayStudent();

  }

}