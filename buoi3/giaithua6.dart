void main(List<String> args) {
  int a = 6;
  int factorialOfA = a.getFactorial();
  print(a.getFactorial());
}

extension getabc on int {
  int getFactorial() {
    int number = 1;
    for (var i = 1; i <= this; i++) {
      number *= i;
    }
    return number;
  }
}
