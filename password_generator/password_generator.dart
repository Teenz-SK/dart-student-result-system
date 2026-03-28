import 'dart:math';
import 'dart:io';

void main() {
  // Ask user for password length
  stdout.write("Enter password length: ");
  int length = int.parse(stdin.readLineSync()!);

  // Character sets
  String upper = "ABCDEFGHIJKLMNOPQRSTUVWXYZ";
  String lower = "abcdefghijklmnopqrstuvwxyz";
  String numbers = "0123456789";
  String special = "!@#\$%^&*()_+";

  // Combine all characters
  String allChars = upper + lower + numbers + special;

  // Random generator
  Random random = Random();

  String password = "";

  // Generate password
  for (int i = 0; i < length; i++) {
    int index = random.nextInt(allChars.length);
    password += allChars[index];
  }

  // Output result
  print("Generated Password: $password");
}