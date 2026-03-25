import 'dart:io';
import 'dart:math';

void main() {
  Random random = Random();
  int secretNumber = random.nextInt(10) + 1;

  int maxAttempts = 3;

  print("🎮 Number Guessing Game");
  print("Guess number between 1 to 10");
  print("You have $maxAttempts attempts\n");

  for (int attempt = 1; attempt <= maxAttempts; attempt++) {
    stdout.write("Attempt $attempt - Enter guess: ");
    String? input = stdin.readLineSync();

    int? guess = int.tryParse(input ?? "");

    if (guess == null) {
      print("Invalid input! Enter number only.\n");
      attempt--;
      continue;
    }

    if (guess == secretNumber) {
      print("🎉 Correct! You win!");
      return;
    } else if (guess < secretNumber) {
      print("Too low! Try higher.\n");
    } else {
      print("Too high! Try lower.\n");
    }
  }

  print("💀 Game Over! Number was $secretNumber");
}