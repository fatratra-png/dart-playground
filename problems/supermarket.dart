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

void main(){
      
}