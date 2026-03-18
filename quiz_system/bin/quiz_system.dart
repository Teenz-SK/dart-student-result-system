import 'dart:io';

// Class to represent each quiz question
class QuizQuestion {

  String question;
  String answer;

  // Constructor
  QuizQuestion(this.question, this.answer);

  // Method to check user's answer
  bool checkAnswer(String userAnswer) {

    // Convert both to lowercase for case-insensitive comparison
    return userAnswer.toLowerCase() == answer.toLowerCase();

  }

}

void main() {

  // List of quiz questions (default 5 questions)
  List<QuizQuestion> questions = [

    QuizQuestion("What is the capital of India?", "Delhi"),
    QuizQuestion("What is 2 + 2?", "4"),
    QuizQuestion("Which language is used in Flutter?", "Dart"),
    QuizQuestion("What color is the sky?", "Blue"),
    QuizQuestion("Who is the Prime Minister of India?", "Modi")

  ];

  int score = 0;

  print("===== Quiz System =====\n");

  // Loop through each question
  for (var q in questions) {

    print(q.question);

    // Take user input
    String userAnswer = stdin.readLineSync()!;

    // Check answer using method
    if (q.checkAnswer(userAnswer)) {

      print("Correct!\n");
      score++;

    } else {

      print("Wrong! Correct answer: ${q.answer}\n");

    }

  }

  // Display final score
  print("===== Result =====");
  print("Your Score: $score / ${questions.length}");

}