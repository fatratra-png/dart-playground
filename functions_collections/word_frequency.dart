Map<String, int> countOccurrences(List<String> words) {
  return words.fold(<String, int>{}, (map, word) {
    map[word] = (map[word] ?? 0) + 1;
    return map;
  });
}

void main() {
  final words = ['apple', 'banana', 'apple', 'cherry', 'banana', 'apple'];

  final occurrences = countOccurrences(words);

  print('Words: $words');
  print('Occurrences: $occurrences');
}