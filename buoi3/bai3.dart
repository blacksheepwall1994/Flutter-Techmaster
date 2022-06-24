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
  print(20.primeNumbers());
  print(100.primeNumbers());
}

extension arr on int {
  List primeNumbers() {
    List d = [];
    for (int i = 0; i <= this; i++) {
      if (snt(i)) {
        d.add(i);
      }
    }
    return d;
  }
}
