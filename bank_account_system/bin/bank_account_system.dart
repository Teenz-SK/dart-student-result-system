import 'dart:io';

class BankAccount {

  String holderName;
  int accountNumber;
  double balance;

  BankAccount(this.holderName, this.accountNumber, this.balance);

  void deposit(double amount) {

    balance += amount;
    print("Deposited: ₹$amount");
    print("Current Balance: ₹$balance");

  }

  void withdraw(double amount) {

    if (amount > balance) {

      print("Insufficient Balance! Cannot withdraw.");

    } else {

      balance -= amount;
      print("Withdrawn: ₹$amount");
      print("Remaining Balance: ₹$balance");

    }

  }

  void displayBalance() {

    print("Account Holder: $holderName");
    print("Account Number: $accountNumber");
    print("Balance: ₹$balance");

  }

}

void main() {

  BankAccount account = BankAccount("Sanju", 1001, 5000);

  print("===== Bank Account Login =====");

  print("Enter Account Holder Name:");
  String name = stdin.readLineSync()!;

  print("Enter Account Number:");
  int accNumber = int.parse(stdin.readLineSync()!);

  // Validation
  if (name != account.holderName || accNumber != account.accountNumber) {

    print("Invalid account details. Access denied.");
    return;

  }

  print("\nLogin successful!");

  while (true) {

    print("\n===== Bank Account System =====");
    print("1. Deposit Money");
    print("2. Withdraw Money");
    print("3. Check Balance");
    print("4. Exit");

    print("Enter your choice:");

    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {

      print("Enter amount to deposit:");
      double amount = double.parse(stdin.readLineSync()!);

      account.deposit(amount);

    } 
    else if (choice == 2) {

      print("Enter amount to withdraw:");
      double amount = double.parse(stdin.readLineSync()!);

      account.withdraw(amount);

    } 
    else if (choice == 3) {

      account.displayBalance();

    } 
    else if (choice == 4) {

      print("Exiting program...");
      break;

    } 
    else {

      print("Invalid choice!");

    }

  }

}