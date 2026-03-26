import 'dart:io';

void main() {
  // Ask user to enter numbers
  print("Enter numbers separated by space:");
  
  String? input = stdin.readLineSync();

  // Convert input string to list
  List<String> stringList = input!.split(" ");

  // Convert string list to integer list
  List<int> numbers = stringList.map((e) => int.parse(e)).toList();

  // Remove duplicates using Set
  Set<int> uniqueSet = numbers.toSet();

  // Convert back to List
  List<int> uniqueNumbers = uniqueSet.toList();

  // Show result
  print("Unique numbers are:");
  print(uniqueNumbers);
}