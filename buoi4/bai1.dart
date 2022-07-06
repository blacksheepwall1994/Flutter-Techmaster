import 'dart:math';

var buoiHocChung;
var index;
Map lopMp = {};

class lophoc {
  String className;
  int studentNumber;
  List<String> studentName = [];
  int buoiHoc;
  // int get getStudentLength => studentName.length;
  lophoc(
      {required this.className,
      required this.studentNumber,
      required this.studentName,
      required this.buoiHoc});
  Map<String, dynamic> toMap() => {
        'className': className,
        'studentNumber': studentNumber,
        'studentName': studentName,
        'buoiHoc': buoiHoc,
      };
  int remainStudent() {
    return studentNumber - studentName.length;
  }

  void addStudent(String name) {
    studentName.add(name);
  }

  void doiBuoiHoc(int buoi) {
    buoiHoc = buoi;
    lopMp[className] = buoiHoc;
  }
}

class Flutter extends lophoc
    with buildAndroid, buildIos, buildWeb, buildDesktop {
  Flutter(
      {required super.className,
      required super.studentNumber,
      required super.studentName,
      required super.buoiHoc});
  // : super(
  //       className: className,
  //       studentNumber: studentNumber,
  //       studentName: studentName);

  @override
  void android() {
    print("andoird");
  }

  @override
  void desktop() {
    print("desltop");
  }

  @override
  void ios() {
    print("ios");
  }

  @override
  void web() {
    print("web");
  }
}

class Android extends lophoc with buildAndroid {
  Android(
      {required super.className,
      required super.studentNumber,
      required super.studentName,
      required super.buoiHoc});
  // : super(
  //       className: className,
  //       studentNumber: studentNumber,
  //       studentName: studentName);

  @override
  void android() {
    print("Android");
  }
}

class Ios extends lophoc with buildIos {
  Ios(
      {required super.className,
      required super.studentNumber,
      required super.studentName,
      required super.buoiHoc});
  // : super(
  //       className: className,
  //       studentNumber: studentNumber,
  //       studentName: studentName);

  @override
  void ios() {
    print("Ios");
  }
}

class Web extends lophoc with buildWeb {
  Web(
      {required className,
      required studentNumber,
      required studentName,
      required buoiHoc})
      : super(
            className: className,
            studentNumber: studentNumber,
            studentName: studentName,
            buoiHoc: buoiHoc);

  @override
  void web() {
    print("Web");
  }
}

mixin buildAndroid {
  void android();
}

mixin buildIos {
  void ios();
}

mixin buildWeb {
  void web();
}

mixin buildDesktop {
  void desktop();
}

typedef VoidCallback = void Function();

updateBuoiHoc(lophoc lop) {
  if (lopMp.containsKey("Flutter")) {
    int giatri = lopMp["Flutter"];
    switch (lop.className) {
      case "Flutter":
        lop.buoiHoc = giatri;
        break;
      case "Android":
        lop.buoiHoc = giatri + 7;
        break;
      case "Ios":
        lop.buoiHoc = giatri + 8;
        break;
      case "Web":
        lop.buoiHoc = giatri - 2;
        break;
    }
  } else if (lopMp.containsKey("Android")) {
    int giatri = lopMp["Android"];
    switch (lop.className) {
      case "Flutter":
        lop.buoiHoc = giatri - 2;
        break;
      case "Android":
        lop.buoiHoc = giatri;
        break;
      case "Ios":
        lop.buoiHoc = giatri + 7;
        break;
      case "Web":
        lop.buoiHoc = giatri + 8;
        break;
    }
  } else if (lopMp.containsKey("Ios")) {
    int giatri = lopMp["Ios"];
    switch (lop.className) {
      case "Flutter":
        lop.buoiHoc = giatri + 7;
        break;
      case "Android":
        lop.buoiHoc = giatri + 8;
        break;
      case "Ios":
        lop.buoiHoc = giatri;
        break;
      case "Web":
        lop.buoiHoc = giatri - 2;
        break;
    }
  } else if (lopMp.containsKey("Web")) {
    int giatri = lopMp["Web"];
    switch (lop.className) {
      case "Flutter":
        lop.buoiHoc = giatri + 8;
        break;
      case "Android":
        lop.buoiHoc = giatri - 2;
        break;
      case "Ios":
        lop.buoiHoc = giatri - 2;
        break;
      case "Web":
        lop.buoiHoc = giatri;
        break;
    }
  }
}

dynamic addMoreStudent(int remain, lophoc lop) {
  for (int i = 0; i < remain; i++) {
    int rd = Random().nextInt(25);
    String char = String.fromCharCode(rd + 65);
    while (lop.studentName.contains(char)) {
      rd = Random().nextInt(25);
      char = String.fromCharCode(rd + 65);
    }
    lop.addStudent(char);
  }
}

void main(List<String> args) {
  //var index;
  //bài 2
  var flutter = Flutter(
      className: "Flutter",
      studentNumber: 11,
      studentName: ["A", "B"],
      buoiHoc: 10);
  var android = Android(
      className: 'Android',
      studentName: ["B", "C"],
      studentNumber: 12,
      buoiHoc: 10);
  var ios = Ios(
      className: 'Ios',
      studentName: ["D", "E", "F"],
      studentNumber: 13,
      buoiHoc: 10);
  var web =
      Web(className: 'Web', studentName: ["F"], studentNumber: 14, buoiHoc: 10);

  int rmFt = flutter.remainStudent();
  int rmAd = android.remainStudent();
  int rmIos = ios.remainStudent();
  int rmWeb = web.remainStudent();

  print("remainFlutter -> ${rmFt}");
  print("remainAndroid -> ${rmAd}");
  print("remainIos -> ${rmIos}");
  print("remainWeb -> ${rmWeb}");

  //flutter.addStudent("quacquac");

  //bài 3
  addMoreStudent(rmFt, flutter);
  addMoreStudent(rmAd, android);
  addMoreStudent(rmIos, ios);
  addMoreStudent(rmWeb, web);
  print("flutter -> ${flutter.studentName}");
  print("Android -> ${android.studentName}");
  print("Ios -> ${ios.studentName}");
  print("Web -> ${web.studentName}");

  //bai4
  Map<String, dynamic> flutterObj = flutter.toMap();
  flutterObj["studentNumber"] = 13;
  print("${flutterObj["studentNumber"]}, ${flutter.studentNumber}");
  //flutter.doiBuoiHoc(12);
  //em chưa biết cách sao để check nếu giá trị này thay đổi thì mấy cái khác thay đổi ạ
  //em làm theo cách if else đến chết thôi ạ :((
  // updateBuoiHoc(android);
  // updateBuoiHoc(ios);
  // updateBuoiHoc(web);
  // print(
  //     "${flutter.buoiHoc},${android.buoiHoc}, ${ios.buoiHoc}, ${web.buoiHoc}");
}
