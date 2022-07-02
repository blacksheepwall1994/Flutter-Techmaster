import 'dart:math';

void main(List<String> args) {
  List arr = [1, 4, 6, 8, 3, 2, 10, 9];
  arr.sort((a, b) => a < b ? 1 : -1);
  print(arr);
}
