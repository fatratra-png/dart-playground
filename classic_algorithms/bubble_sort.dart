void bubbleSort(List<int> list) {
  int n = list.length;
  bool swapped;

  do {
    swapped = false;
    for (int j = 0; j < n - 1; j++) {
      if (list[j] > list[j + 1]) {
        int temp = list[j];
        list[j] = list[j + 1];
        list[j + 1] = temp;

        swapped = true;
      }
    }
    n--;
  } while (swapped);
}

void main() {
  List<int> numbers = [12, 2, 43, 675, 7, 6, 42, 1, 0, 9, 10];
  print(numbers);
  bubbleSort(numbers);
  print(numbers);
}
