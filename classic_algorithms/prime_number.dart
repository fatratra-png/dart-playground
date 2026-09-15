bool isPrime(int n) {
  if (n < 2) return false;
  if (n == 2) return true;
  if (n % 2 == 0) return false;

  for (int i = 3; i * i <= n; i += 2) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  print(isPrime(17));
  print(isPrime(4));
  print(isPrime(2));
  print(isPrime(1));
  print(isPrime(97));
}