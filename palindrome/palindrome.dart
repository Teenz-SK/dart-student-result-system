import 'dart:io';

void main() {
  // Ask user for input
  stdout.write("Enter a string: ");
  String? input = stdin.readLineSync();

  // Validate input
  if (input == null || input.isEmpty) {
    print("❌ Invalid input!");
    return;
  }

  // Convert to lowercase (optional - for case-insensitive check)
  String original = input.toLowerCase();

  // Reverse the string
  String reversed = original.split('').reversed.join('');

  // Check palindrome
  if (original == reversed) {
    print("✅ \"$input\" is a PALINDROME.");
  } else {
    print("❌ \"$input\" is NOT a palindrome.");
  }
}