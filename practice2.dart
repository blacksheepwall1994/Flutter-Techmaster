void main(List<String> args) {
  List arr = [
    1,
    2,
    3,
    "đây",
    "kết",
    "là",
    true,
    false,
    {true: "buổi", 1: "học", 10.2: ":", false: "dart basics"},
    ['thứ', 'quả', 'về'],
    "(phần 1)",
    {"flutter": "dart"},
  ];

  /// Lấy data từ array trên và tạo ra 1 String với giá trị sau:
  /// Đây là kết quả buổi học thứ 2 về Dart: DART BASIC (phần 1)

  // ví dụ
  String s1 =
      "${arr[3].toString().substring(0, 1).toUpperCase()}${arr[3].toString().substring(1, 3)}";
  String s2 =
      "${arr[11]["flutter"][0].toString().toUpperCase()}${arr[11]["flutter"].toString().substring(1)}${arr[8][10.2]}";
  String s3 = arr[8][false].toString().toUpperCase();
  print(
      '"$s1 ${arr[5]} ${arr[4]} ${arr[9][1]} ${arr[8][true]} ${arr[8][1]} ${arr[9][0]} ${arr[1]} ${arr[9][2]} $s2 $s3"'); // sẽ in ra "Đây" các ký tự sau tương tự như vậy.
}
