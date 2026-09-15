void main() {
  final numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10];

  final result = numbers
      .where((n) => n % 2 == 0)
      .map((n) => n * 2)
      .reduce((a, b) => a + b);

  print('Numbers: $numbers');
  print('Filter even -> double -> sum: $result');
}
