void main(List<String> args) {
  int a = 10;
  print("add method: ${a.add(2)}"); // add method: 12
  print("subtract method: ${a.subtract(2)}"); // subtract method: 8
  print("divide method: ${a.divide(2)}"); // divide method: 5
  print("multiple method: ${a.multiple(2)}"); // multiple method: 20
}

extension intExt on int {
  int add(int a) {
    return this + a;
  }

  int subtract(int a) {
    return this - a;
  }

  double divide(int a) {
    return this / a;
  }

  int multiple(int a) {
    return this * a;
  }
}
