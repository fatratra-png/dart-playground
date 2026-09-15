List<int> filterEven(List<num> list) {
  List<int> areEvenList = [];
  for (num number in list) {
    if (number is int && number % 2 == 0) {
      areEvenList.add(number);
    }
  }
  return areEvenList;
}

void main() {
  List<num> list = [0.2, 0, 2, 4, 56, 56.756, 67, 1, 0];
  print(filterEven(list));
}
