import 'dart:io';

void main() {

  print("===== Simple Calculator =====");

  print("Enter first number:");
  double? num1 = double.tryParse(stdin.readLineSync()!);

  print("Enter second number:");
  double? num2 = double.tryParse(stdin.readLineSync()!);

  if(num1 == null || num2 == null){
    print("Invalid input. Please enter numbers only.");
    return;
  }

  print("\nChoose Operation:");
  print("1. Addition");
  print("2. Subtraction");
  print("3. Multiplication");
  print("4. Division");

  int choice = int.parse(stdin.readLineSync()!);

  if(choice == 1){

    print("Result: ${num1 + num2}");

  }
  else if(choice == 2){

    print("Result: ${num1 - num2}");

  }
  else if(choice == 3){

    print("Result: ${num1 * num2}");

  }
  else if(choice == 4){

    if(num2 == 0){

      print("Error: Cannot divide by zero");

    }
    else{

      print("Result: ${num1 / num2}");

    }

  }
  else{

    print("Invalid operation");

  }

}