dynamic binarySearch(List list, dynamic target) {
  dynamic start = 0;
  dynamic end = list.length - 1;
  while (start <= end) {
    dynamic mid = start + (end - start) ~/ 2;
    if (list[mid] == target) {
      return mid;
    } else if (list[mid] < target) {
      start = mid + 1;
    } else {
      end = mid - 1;
    }
  }
  return -1;
}

void main() {
  List list = [1, 0, 42, 256, 67];
  print(binarySearch(list, 256));
}
