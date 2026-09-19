class Product {
  String name;
  double price;
  int quantity;
  double get subtotal => price * quantity;

  Product({required this.name, required this.price, required this.quantity});
}

double calculateTotal(List<Product> products) {
  double total = 0;
  for (final product in products) {
    total += product.subtotal;
  }
  return total;
}

double applyDiscount(double total, double discountPercent) {
  return total - (total * discountPercent / 100);
}

double calculateChange(double paid, double total) {
  return paid - total;
}

void main() {
  final products = [
    Product(name: "Bread", price: 600, quantity: 2),
    Product(name: "Milk", price: 5000, quantity: 1),
    Product(name: "Tomato", price: 200, quantity: 5),
  ];

  double total = calculateTotal(products);
  print("Total: $total Ar");
  total = applyDiscount(total, 15);
  print("Total with discount: $total Ar");
  double paid = 20000;
  print("Paid: $paid Ar");
  double change = calculateChange(paid, total);
  print("Change: $change Ar");
}
