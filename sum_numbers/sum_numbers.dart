void main() {
  // Predefined list of numbers
  List<int> numbers = [1, 2, 3, 4, 5];

  int sum = 0;

  // Loop through list and add each number
  for (int num in numbers) {
    sum += num;
  }

  // Print result
  print("Numbers: $numbers");
  print("Sum of numbers: $sum");
}