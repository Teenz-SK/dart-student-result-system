import 'dart:io';

class Item {

  String name;
  double price;
  int quantity;

  Item(this.name, this.price, this.quantity);

  double calculateTotal() {
    return price * quantity;
  }

  void displayItem() {
    print("Item: $name");
    print("Price: ₹$price");
    print("Quantity: $quantity");
    print("Total: ₹${calculateTotal()}");
    print("----------------------");
  }

}

void main() {

  List<Item> items = [

    Item("Burger", 100, 2),
    Item("Pizza", 250, 1),
    Item("Juice", 80, 3)

  ];

  while(true){

    print("\n===== Order Bill Generator =====");
    print("1. Display Items");
    print("2. Add Item");
    print("3. Exit");

    print("Enter your choice:");

    int choice = int.parse(stdin.readLineSync()!);

    if(choice == 1){

      print("\nItem List:\n");

      double grandTotal = 0;

      for(var item in items){

        item.displayItem();
        grandTotal += item.calculateTotal();

      }

      print("Grand Total: ₹$grandTotal");

    }

    else if(choice == 2){

      print("Enter item name:");
      String name = stdin.readLineSync()!;

      print("Enter price:");
      double price = double.parse(stdin.readLineSync()!);

      print("Enter quantity:");
      int quantity = int.parse(stdin.readLineSync()!);

      items.add(Item(name, price, quantity));

      print("Item added successfully.");

    }

    else if(choice == 3){

      print("Exiting program...");
      break;

    }

    else{

      print("Invalid choice.");

    }

  }

}