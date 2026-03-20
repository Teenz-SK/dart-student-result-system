import 'dart:io';

void main() {

  print("===== Form Validation System =====\n");

  // NAME VALIDATION (Required)
  print("Enter Name:");
  String name = stdin.readLineSync()!;

  if (name.isEmpty) {
    print("Error: Name cannot be empty");
    return;
  }

  // EMAIL VALIDATION
  print("\nEnter Email:");
  String email = stdin.readLineSync()!;

  if (!email.contains("@") || !email.contains(".")) {
    print("Error: Invalid email format");
    return;
  }

  // PASSWORD VALIDATION (Length)
  print("\nEnter Password:");
  String password = stdin.readLineSync()!;

  if (password.length < 6) {
    print("Error: Password must be at least 6 characters");
    return;
  }

  // AGE VALIDATION (Range)
  print("\nEnter Age:");
  int? age = int.tryParse(stdin.readLineSync()!);

  if (age == null || age < 18 || age > 60) {
    print("Error: Age must be between 18 and 60");
    return;
  }

  // PHONE VALIDATION (Numbers only + length)
  print("\nEnter Phone Number:");
  String phone = stdin.readLineSync()!;

  if (phone.length != 10 || int.tryParse(phone) == null) {
    print("Error: Phone number must be 10 digits");
    return;
  }

  // SUCCESS MESSAGE
  print("\nAll inputs are valid ✅");
  print("Form submitted successfully!");

}