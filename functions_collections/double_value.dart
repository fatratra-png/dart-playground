List<int> doubleValue(List<int> values) {
  return values.map((v) => v * 2).toList();
}

void main() {
  print(doubleValue([1, 2, 3])); // [2, 4, 6]
  print(doubleValue([5, 10])); // [10, 20]
}
