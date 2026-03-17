import 'dart:io';

class Employee {
  String name;
  double basicSalary;
  double bonus;

  Employee(this.name, this.basicSalary, this.bonus);

  double calculateTotalSalary() {
    return basicSalary + bonus;
  }

  double calculateBonusPercentage() {
    return (bonus / basicSalary) * 100;
  }

  void displayEmployee() {
    print("\nEmployee Name: $name");
    print("Basic Salary: ₹$basicSalary");
    print("Bonus: ₹$bonus");
    print(
      "Bonus Percentage: ${calculateBonusPercentage().toStringAsFixed(2)}%",
    );
    print("Total Salary: ₹${calculateTotalSalary()}");
    print("-----------------------------");
  }
}

void main() {
  List<Employee> employees = [];

  print("Enter number of employees:");
  int count = int.parse(stdin.readLineSync()!);

  for (int i = 0; i < count; i++) {
    print("\nEnter Employee Name:");
    String name = stdin.readLineSync()!;

    print("Enter Basic Salary:");
    double salary = double.parse(stdin.readLineSync()!);

    print("Enter Bonus Amount:");
    double bonus = double.parse(stdin.readLineSync()!);

    employees.add(Employee(name, salary, bonus));
  }

  print("\n===== Employee Salary Details =====");

  for (var emp in employees) {
    emp.displayEmployee();
  }
}
