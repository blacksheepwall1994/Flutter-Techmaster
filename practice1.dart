void main(List<String> args) {
  String str =
      " đây là kết quả của buổi học thứ 2 về dart: dart basics (phần 1)...";
  String str1 = str.trim().substring(37, 54).toUpperCase();
  String str2 =
      "${str.trim()[0].toUpperCase()}${str.trim().substring(1, 37)}${str1.toString()}${str.trim().substring(54, 63)}";
  print(str2);

  /// hãy viết code bằng tất cả các cách có thể để in ra:
  /// `Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)`
  /// gợi ý: sử dụng hàm subString()
}
