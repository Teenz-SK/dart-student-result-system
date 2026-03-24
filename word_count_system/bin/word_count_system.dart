import 'dart:io';

void main() {
  print("===== Word Count System =====");

  print("Enter a sentence:");

  String sentence = stdin.readLineSync()!;

  // Trim removes extra spaces at start and end
  sentence = sentence.trim();

  // Split sentence into words using space
  List<String> words = sentence.split(" ");

  // Count words
  int count = words.length;

  print("\nTotal words: $count");
}
