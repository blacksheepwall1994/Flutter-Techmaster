int giaiThua(int n) {
  return n == 0 ? 1 : n * giaiThua(n - 1);
}

int giaiThua2(int n) {
  int tich = 1;
  for (int i = 1; i <= n; i++) {
    tich *= i;
  }
  return tich;
}

void main(List<String> args) {
  print(giaiThua(8));
}
