class TextAnalyzer {
  String content;

  TextAnalyzer(this.content);
}

String mostFrequentWord(TextAnalyzer analyzer) {
  List<String> wordList = analyzer.content.toLowerCase().split(' ');
  Map<String, int> counts = {};

  for (String word in wordList) {
    if (counts.containsKey(word)) {
      counts[word] = counts[word]! + 1;
    } else {
      counts[word] = 1;
    }
  }

  String topWord = wordList[0];
  int topCount = 0;
  for (String word in counts.keys) {
    if (counts[word]! > topCount) {
      topCount = counts[word]!;
      topWord = word;
    }
  }

  return topWord;
}

void main() {
  TextAnalyzer analyzer = TextAnalyzer('Lorem ipsum dolor sit amet Lorem 123');

  int words = analyzer.content.split(' ').length;
  int spaces = words - 1;

  int letters = 0;
  int digits = 0;
  for (String c in analyzer.content.split('')) {
    if ('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'.contains(c)) {
      letters++;
    }
    if ('0123456789'.contains(c)) {
      digits++;
    }
  }

  print('Words: $words');
  print('Letters: $letters');
  print('Digits: $digits');
  print('Spaces: $spaces');
  print('Most frequent word: ${mostFrequentWord(analyzer)}');
}
