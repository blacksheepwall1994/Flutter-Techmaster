int fibo(int n) {
  if (n == 0) return 0;
  if (n == 1) return 1;
  return fibo(n - 1) + fibo(n - 2);
}

extension fibona on int {
  void fibonaci() {
    List soFibo = [];
    for (int i = 0; i < this; i++) {
      soFibo.add(fibo(i));
    }
    print(soFibo);
  }
}

void main(List<String> args) {
  10.fibonaci();
}
