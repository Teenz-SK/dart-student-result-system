import 'dart:io';

void main() {

  // Take first number input
  print("Enter first number:");
  int num1 = int.parse(stdin.readLineSync()!);

  // Take second number input
  print("Enter second number:");
  int num2 = int.parse(stdin.readLineSync()!);

  // Take third number input
  print("Enter third number:");
  int num3 = int.parse(stdin.readLineSync()!);

  // Addition
  int sum = num1 + num2 + num3;

  // Average
  double average = sum / 3;

  // Output
  print("\nAddition = $sum");
  print("Average = $average");

}