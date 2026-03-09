import 'dart:io';

class Book {

  String title;
  String author;
  bool isAvailable;

  Book(this.title, this.author, this.isAvailable);

  void displayBook(){

    print("Title: $title");
    print("Author: $author");
    print("Available: ${isAvailable ? "Yes" : "No"}");
    print("---------------------");

  }

}

void main(){

  // Login credentials
  String validName = "Sanju";
  int validRoll = 101;

  print("===== Library Login =====");

  print("Enter Student Name:");
  String name = stdin.readLineSync()!;

  print("Enter Roll Number:");
  int roll = int.parse(stdin.readLineSync()!);

  // Validation
  if(name != validName || roll != validRoll){

    print("Invalid login details. Access denied.");
    return;

  }

  print("\nLogin successful!");

  List<Book> books = [

    Book("Flutter Guide","John",true),
    Book("Dart Programming","Alex",true),
    Book("Data Structures","David",true)

  ];

  while(true){

    print("\n===== Library System =====");
    print("1. Show Books");
    print("2. Borrow Book");
    print("3. Return Book");
    print("4. Exit");

    print("Enter your choice:");

    int choice = int.parse(stdin.readLineSync()!);

    if(choice == 1){

      print("\nBook List:\n");

      for(var book in books){
        book.displayBook();
      }

    }

    else if(choice == 2){

      print("Enter book title to borrow:");
      String title = stdin.readLineSync()!;

      bool found = false;

      for(var book in books){

        if(book.title.toLowerCase() == title.toLowerCase()){

          if(book.isAvailable){

            book.isAvailable = false;
            print("Book borrowed successfully.");

          }
          else{

            print("Book already borrowed.");

          }

          found = true;
          break;

        }

      }

      if(!found){
        print("Book not found.");
      }

    }

    else if(choice == 3){

      print("Enter book title to return:");
      String title = stdin.readLineSync()!;

      bool found = false;

      for(var book in books){

        if(book.title.toLowerCase() == title.toLowerCase()){

          book.isAvailable = true;
          print("Book returned successfully.");

          found = true;
          break;

        }

      }

      if(!found){
        print("Book not found.");
      }

    }

    else if(choice == 4){

      print("Exiting program...");
      break;

    }

    else{

      print("Invalid choice.");

    }

  }

}