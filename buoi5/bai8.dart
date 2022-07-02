int gcd(int a, int b) {
  while (b != 0) {
    var t = b;
    b = a % t;
    a = t;
  }
  return a;
}

void main(List<String> args) {
  int a = 10;
  int b = 44;
  print(gcd(a, b));
}
