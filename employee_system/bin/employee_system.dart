class Employee {

  String name;
  int id;
  double salary;

  Employee(this.name, this.id, this.salary);

  double calculateBonus() {

    return salary * 0.10;

  }

  void displayInfo() {

    print("Employee Name: $name");
    print("Employee ID: $id");
    print("Salary: ₹$salary");
    print("Bonus: ₹${calculateBonus()}");
    print("---------------------------");

  }

}

void main() {

  Employee emp1 = Employee("Sanju", 101, 30000);
  Employee emp2 = Employee("Rahul", 102, 25000);
  Employee emp3 = Employee("Amit", 103, 40000);

  emp1.displayInfo();
  emp2.displayInfo();
  emp3.displayInfo();

}