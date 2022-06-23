//Khai báo toàn bộ các kiểu dữ liệu: Non-Nullable Types và Nullable Types, dynamic, var. Có sử dụng các từ khoá static, final, late, const.
void main(List<String> args) {
  int so = 1;
  double db = 1.1;
  String str = "abc";
  bool isTrue = true;

  int? so1 = null;
  double? db1 = null;
  String? str1 = null;
  bool? isTrue1 = null;

  var soVar = 1;
  var dbVar = 1.1;
  var strVar = "abc";
  var isTrueVar = true;
  var aVar = [1, 2, 3, 4, 5];

  List<int> listInt = [0, 1, 2, 3];
  List<String> listString = ["a", "b", "c"];
  List<bool> listBool = [true, false];
  List<double> listDouble = [1.1, 2.2, 3.3];

  dynamic dynamicInt = 1;
  dynamic dynamicString = "abc";
  dynamic dynamicBool = true;
  dynamic dynamicDouble = 1.1;
  dynamic dynamicListInt = [1, 2, 3];
  dynamic dynamicListString = ["a", "b", "c"];
  dynamic dynamicListBool = [true, false];
  dynamic dynamicListDouble = [1.1, 2.2, 3.3];

  final quacquac = '1';
  const meomeo = 2;
  late final gaugau = '123';
}

class A {
  static int stInt = 1;
  static double stDouble = 1.1;
  static String stString = "abc";
  static bool stBool = true;
  static List<int> stListInt = [1, 2, 3];
  static List<String> stListString = ["a", "b", "c"];
  static List<bool> stListBool = [true, false];
  static List<double> stListDouble = [1.1, 2.2, 3.3];
}

String getIntFromString(int input) => input.toString();
String getDoubleFromString(double input) => input.toString();
int getStringfromInt(String input) => int.parse(input);
double getStringfromDouble(String input) => double.parse(input);


//tính giai thừa của 6