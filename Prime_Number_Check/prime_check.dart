import 'dart:io';

void main() {
  // Ask user to enter a number
  stdout.write("Enter a number: ");
  String? input = stdin.readLineSync();

  // Convert input to integer safely
  int? number = int.tryParse(input ?? "");

  // Validate input
  if (number == null) {
    print("❌ Invalid input! Please enter a valid number.");
    return;
  }

  // Prime numbers are greater than 1
  if (number <= 1) {
    print("$number is NOT a prime number.");
    return;
  }

  bool isPrime = true;

  // Check divisibility from 2 to sqrt(number)
  for (int i = 2; i * i <= number; i++) {
    if (number % i == 0) {
      isPrime = false;
      break;
    }
  }

  // Print result
  if (isPrime) {
    print("✅ $number is a PRIME number.");
  } else {
    print("❌ $number is NOT a prime number.");
  }
}