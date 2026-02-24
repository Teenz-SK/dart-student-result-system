class Student {
  String name;
  int rollNumber;
  double marks;

  Student(this.name, this.rollNumber, this.marks);

  String calculateGrade() {
    if (marks >= 90) {
      return "A+";
    } else if (marks >= 75) {
      return "A";
    } else if (marks >= 60) {
      return "B";
    } else if (marks >= 40) {
      return "C";
    } else {
      return "Fail";
    }
  }

  void displayInfo() {
    print("Name: $name");
    print("Roll Number: $rollNumber");
    print("Marks: $marks");
    print("Grade: ${calculateGrade()}");
    print("-----------------------");
  }
}

void main() {
  List<Student> students = [
    Student("Rahul", 101, 92),
    Student("Priya", 102, 78),
    Student("Amit", 103, 55),
  ];

  for (var student in students) {
    student.displayInfo();
  }
}