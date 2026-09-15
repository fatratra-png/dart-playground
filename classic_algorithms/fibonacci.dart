List<int> fibonacci(int n) {
  List<int> result = [];
  int a = 0;
  int b = 1;

  for (int i = 0; i < n; i++) {
    result.add(a);
    int temp = a + b;
    a = b;
    b = temp;
  }
  return result;
}

void main() {
  print(fibonacci(10));
  print(fibonacci(1));
  print(fibonacci(0));
}
