void main() {
  String text = 'Lorem ipsum dolor sit amet Lorem 123';

  int words = text.split(' ').length;
  int spaces = words - 1;

  int letters = 0;
  int digits = 0;
  for (String c in text.split('')) {
    if ('abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ'.contains(c)) {
      letters = letters + 1;
    }
    if ('0123456789'.contains(c)) {
      digits = digits + 1;
    }
  }

  String top = 'lorem';

  print('Text: $text');
  print('Words: $words');
  print('Letters: $letters');
  print('Digits: $digits');
  print('Spaces: $spaces');
  print('Most frequent word: $top');
}
