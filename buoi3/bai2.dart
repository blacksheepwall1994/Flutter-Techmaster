void main(List<String> args) {
  List<int> a = [];
  for (var i = 0; i <= 100; i++) {
    a.add(i);
  }
  //print(a);
  List<int> chan = [];
  List<int> le = [];
  for (var i in a) {
    if (i % 2 == 0) {
      chan.add(i);
    } else {
      le.add(i);
    }
  }
  print(chan);
  print(le);
  print("${a[0] % 2 == 0 ? "So 0 la so chan" : "So 0 la so le"}");
}
