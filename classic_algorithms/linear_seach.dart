dynamic linearSearch(List list, dynamic target) {
  for (int i = 0; i < list.length - 1; i++) {
    if (list[i] == target) {
      return i;
    }
  }
  return -1;
}

void main() {
  List<int> list = [1, 2, 3, 4, 5, 6, 7, 8, 9];
  print(linearSearch(list, 1));
}
