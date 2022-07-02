int tinhTong(List<int> arr) {
  int tong = 0;
  for (int i = 0; i < arr.length; i++) {
    tong += arr[i];
  }
  return tong;
}

void main(List<String> args) {
  List<int> arr = [1, 2, 3, 4, 5, 6, 7, 8, 10];
  print(tinhTong(arr));
}
