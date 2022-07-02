void main(List<String> args) {
  List<int> arr = [1, 4, 6, 8, 3, 4, 1, 6];
  arr.sort();
  List abc = arr.toSet().toList();
  for (int i = 0; i < abc.length; i++) {
    arr.remove(abc[i]);
  }
  for (int i = 0; i < arr.length; i++) {
    abc.remove(arr[i]);
  }
  print(abc);
}
