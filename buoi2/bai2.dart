void main(List<String> args) {
  /*
    Ví dụ dưới đây có 3 lỗi. Hãy tìm và sửa hết 3 lỗi này.
    Nhớ đọc ví dụ về ... nhé mọi người.
  */

  var arrs = ["-1", "1", "2", null, "3", "4", "5", "6", "7"];
  //arrs..remove(null);
  Map<dynamic, List<String?>?>? sMap = {
    1: null,
    2: [],
    3: ["x", "y", "z"]
  };
  //sMap..remove(null);
  Map<dynamic, List<dynamic>?> map = {
    "first": ["a", "b", "c", "d"]
  };
  map.addAll(sMap);
  //thêm ! trong pare(e!)
  List<int> arrsToInt =
      arrs.whereType<String>().map((e) => int.parse(e)).toList();

  map["second"] = arrsToInt;
  map["third"] = sMap.values.last?.sublist(1);

  map["fourth"] = [
    ...arrs.map((e) => int.parse(e!)).where((e) => e % 2 == 1),
    ...arrs.where((e) => e == null),
    ...sMap[3]!.sublist(0, 2)
  ];

  print(map);
}
