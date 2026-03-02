class Product {

  String name;
  double price;
  String category;

  Product(this.name, this.price, this.category);

  void displayProduct(){

    print("Product Name: $name");
    print("Price: ₹$price");
    print("Category: $category");
    print("-----------------------");

  }

}

void main(){

  List<Product> products = [

    Product("Laptop", 50000, "Electronics"),
    Product("Shoes", 2000, "Fashion"),
    Product("Mobile", 15000, "Electronics"),

  ];

  for(var product in products){

    product.displayProduct();

  }

}