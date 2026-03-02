class Employee {

  String name;
  int id;
  String department;
  double salary;

  Employee(this.name, this.id, this.department, this.salary);

  void displayEmployee(){

    print("Employee Name: $name");
    print("Employee ID: $id");
    print("Department: $department");
    print("Salary: ₹$salary");
    print("-----------------------");

  }

}

void main(){

  List<Employee> employees = [

    Employee("Sanju", 101, "IT", 25000),
    Employee("Rahul", 102, "HR", 20000),
    Employee("Amit", 103, "Finance", 30000),

  ];

  for(var employee in employees){

    employee.displayEmployee();

  }

}