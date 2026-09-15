void main() {
  final cart = <String, double>{
    'Apples': 2.50,
    'Bread': 3.20,
    'Milk': 1.80,
    'Eggs': 4.00,
  };

  final total = cart.values.reduce((sum, price) => sum + price);

  print('Cart:');
  cart.forEach((product, price) => print('  $product: \$${price.toStringAsFixed(2)}'));
  print('Total: \$${total.toStringAsFixed(2)}');
}