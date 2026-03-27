void main() {
  // Predefined list
  List<int> numbers = [1, 2, 2, 3, 1, 2];

  // Map to store frequency
  Map<int, int> frequency = {};

  // Loop through list
  for (int num in numbers) {
    if (frequency.containsKey(num)) {
      frequency[num] = frequency[num]! + 1;
    } else {
      frequency[num] = 1;
    }
  }

  // Print result
  print("Numbers: $numbers");
  print("Frequency:");

  frequency.forEach((key, value) {
    print("$key → $value times");
  });
}