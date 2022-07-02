void main(List<String> args) {
  String s = "Hello word welcome Techmaster";
  //xoá dấu
  String done = s.toLowerCase();
  int max = -10000;
  List nhieuNhat = [];
  //tạo map abc
  var abc = {};
  for (int i = 0; i < done.length; i++) {
    //nếu key của abc có kí hiệu done[i] thì cộng thêm 1, không thì tạo giá trị và gán = 1
    if (abc.keys.contains(done[i])) {
      abc[done[i]]++;
    } else {
      abc[done[i]] = 1;
    }
  }
  //do em không biết sort map nên em for loop đến chết ạ :((
  for (int i = 0; i < abc.keys.length; i++) {
    if (abc[abc.keys.elementAt(i)] > max) {
      max = abc[abc.keys.elementAt(i)];
    }
  }
  //để tránh bỏ giá trị khi của key khi value bằng nhau nên em lại for loop 1 lần nữa để gom hết 1 thể ạ
  for (int i = 0; i < abc.keys.length; i++) {
    if (abc[abc.keys.elementAt(i)] == max) {
      nhieuNhat.add(abc.keys.elementAt(i));
    }
  }
  print(nhieuNhat);
}
