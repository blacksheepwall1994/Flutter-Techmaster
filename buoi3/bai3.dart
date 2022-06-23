import 'dart:math';

bool snt(int n) {
  //nếu mà số 0 1 không hợp lệ thì dùng dòng if dưới ạ
  //if (n < 2) return false;
  for (int i = 2; i <= sqrt(n); i++) {
    if (n % i == 0) return false;
  }
  return true;
}

void main(List<String> args) {
  int a = 20;
  List b = [];
  for (int i = 0; i <= 20; i++) {
    if (snt(i)) {
      b.add(i);
    }
  }
  print(b);
  int c = 20;
  List d = [];
  for (int i = 0; i <= 100; i++) {
    if (snt(i)) {
      d.add(i);
    }
  }
  print(d);
}
