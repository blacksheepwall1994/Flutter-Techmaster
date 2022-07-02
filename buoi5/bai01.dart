void main(List<String> args) {
  List arr = [1, 2, 3, 4, 5, 6, 7, 8, 10];
  List chan = [];
  for (var i in arr) {
    if (i.isEven) {
      chan.add(i);
    }
  }
  print(chan);
}
