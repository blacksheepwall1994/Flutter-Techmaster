import 'dart:math';

bool hopSo(int n) {
  int count = 0;
  if (n < 2) return false;
  for (int i = 1; i <= n; i++) {
    if (n % i == 0) count++;
  }
  if (count > 2) {
    return true;
  } else {
    return false;
  }
}

void main(List<String> args) {
  List arr = [1, 2, 3, 4, 5, 6, 7, 8, 10];
  List ketQua = [];
  for (var i in arr) {
    if (hopSo(i)) {
      ketQua.add(i);
    }
  }
  print(ketQua);
}
