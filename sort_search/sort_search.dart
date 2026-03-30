import 'dart:io';

void main() {
  // Shuffled list
  List<int> numbers = [5, 2, 9, 1, 7];

  print("Original List: $numbers");

  // -------- ASCENDING SORT --------
  List<int> ascList = List.from(numbers);

  for (int i = 0; i < ascList.length; i++) {
    for (int j = 0; j < ascList.length - i - 1; j++) {
      if (ascList[j] > ascList[j + 1]) {
        int temp = ascList[j];
        ascList[j] = ascList[j + 1];
        ascList[j + 1] = temp;
      }
    }
  }

  print("Ascending Order: $ascList");

  // -------- DESCENDING SORT --------
  List<int> descList = List.from(numbers);

  for (int i = 0; i < descList.length; i++) {
    for (int j = 0; j < descList.length - i - 1; j++) {
      if (descList[j] < descList[j + 1]) {
        int temp = descList[j];
        descList[j] = descList[j + 1];
        descList[j + 1] = temp;
      }
    }
  }

  print("Descending Order: $descList");

  // -------- SEARCH --------
  stdout.write("Enter number to search: ");
  int search = int.parse(stdin.readLineSync()!);

  bool found = false;

  for (int num in numbers) {
    if (num == search) {
      found = true;
      break;
    }
  }

  if (found) {
    print("Found");
  } else {
    print("Not Found");
  }
}