// Shopping Cart System

class CartItem {

  // Properties of each item
  String name;
  double price;
  int quantity;

  // Constructor to initialize values
  CartItem(this.name, this.price, this.quantity);

  // Method to calculate total price of one item
  double getTotal() {
    return price * quantity;
  }

  // Method to display item details
  void displayItem() {
    print("Item: $name");
    print("Price: ₹$price");
    print("Quantity: $quantity");
    print("Total: ₹${getTotal()}");
    print("----------------------");
  }

}

void main() {

  // List of cart items (default 3 items)
  List<CartItem> cart = [

    CartItem("Laptop", 50000, 1),
    CartItem("Mouse", 500, 2),
    CartItem("Keyboard", 1500, 1)

  ];

  double cartTotal = 0;

  print("===== Shopping Cart =====\n");

  // Loop through each item
  for (var item in cart) {

    // Display item details
    item.displayItem();

    // Add each item's total to cart total
    cartTotal += item.getTotal();

  }

  // Print final cart value
  print("Total Cart Value: ₹$cartTotal");

}