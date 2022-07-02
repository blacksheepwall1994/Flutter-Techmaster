import 'dart:math';

bool snt(int n) {
  if (n < 2) return false;
  for (int i = 2; i <= sqrt(n); i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void main(List<String> args) {
  List arr = [1, 2, 3, 4, 5, 6, 7, 8, 10];
  List soNguyenTo = [];
  for (var i in arr) {
    if (snt(i)) {
      soNguyenTo.add(i);
    }
  }
  print(soNguyenTo);
}
