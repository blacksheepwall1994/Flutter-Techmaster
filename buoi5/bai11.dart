void main(List<String> args) {
  String s = "Hello word welcome Techmaster";
  //xoá dấu
  String done = s.toLowerCase();
  int min = 10000;
  List itNhat = [];
  //tạo map abc
  var abc = {};
  for (int i = 0; i < done.length; i++) {
    if (abc.keys.contains(done[i])) {
      abc[done[i]]++;
    } else {
      abc[done[i]] = 1;
    }
  }
  for (int i = 0; i < abc.keys.length; i++) {
    if (abc[abc.keys.elementAt(i)] < min) {
      min = abc[abc.keys.elementAt(i)];
    }
  }
  for (int i = 0; i < abc.keys.length; i++) {
    if (abc[abc.keys.elementAt(i)] == min) {
      itNhat.add(abc.keys.elementAt(i));
    }
  }
  print(itNhat);
}
