import 'dart:io';

class Student {

  String name;
  int rollNumber;
  double marks;
  String grade;

  Student(this.name, this.rollNumber, this.marks)
      : grade = calculateGrade(marks);

  static String calculateGrade(double marks){

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
    print("Grade: $grade");
    print("---------------------");

  }

}

void main(){

  List<Student> students = [

    Student("Sanju",101,85),
    Student("Rahul",102,60),
    Student("Amit",103,35),
    Student("Ravi",104,90)

  ];

  while(true){

    print("\n===== Student Result System =====");
    print("1. Show Student List");
    print("2. Search Student");
    print("3. Sort Students by Marks");
    print("4. Exit");

    print("Enter your choice:");

    int choice = int.parse(stdin.readLineSync()!);

    if(choice == 1){

      print("\n===== Student List =====\n");

      for(var student in students){
        student.displayStudent();
      }

    }

    else if(choice == 2){

      print("\nEnter Student Name:");

      String searchName = stdin.readLineSync()!;

      bool found = false;

      for(var student in students){

        if(student.name.toLowerCase() ==
            searchName.toLowerCase()){

          print("\nStudent Found:\n");
          student.displayStudent();
          found = true;
          break;

        }

      }

      if(!found){
        print("\nStudent not found");
      }

    }

    else if(choice == 3){

      // Sorting by marks (Descending Order)n
      students.sort((a, b) => b.marks.compareTo(a.marks));

      print("\n===== Students Sorted by Marks (High to Low) =====\n");

      for(var student in students){
        student.displayStudent();
      }

    }

    else if(choice == 4){

      print("\nProgram Ended");
      break;

    }

    else{

      print("\nInvalid Choice");

    }

  }

}