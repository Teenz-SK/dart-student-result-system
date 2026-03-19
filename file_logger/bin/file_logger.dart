import 'dart:io';

void main() {

  // File name with date (as per your requirement)
  String fileName = "log_2026_03_18.txt";

  File file = File(fileName);

  print("===== File Logger System =====");
  print("Type your message (type 'exit' to stop)\n");

  while (true) {

    // Take input from user
    String input = stdin.readLineSync()!;

    // Exit condition
    if (input.toLowerCase() == "exit") {
      print("Logging stopped.");
      break;
    }

    // Get current time
    String time = DateTime.now().toString();

    // Format message with timestamp
    String logMessage = "[$time] $input\n";

    // Append message to file
    file.writeAsStringSync(logMessage, mode: FileMode.append);

    print("Message saved.");

  }

}