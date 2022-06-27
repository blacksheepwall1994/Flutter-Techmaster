import 'dart:math';

class Flutter implements buildAndroid, buildIos, buildWeb, buildDesktop {
  String className = 'Flutter';
  int numberStudent = 11;
  int get getNumber => numberStudent;
  List<String>? studentName;
  int get getStudentLength => studentName!.length;
  Flutter({this.studentName});

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

class Android implements buildAndroid {
  String className = 'android';
  int numberStudent = 12;
  int get getNumber => numberStudent;
  List<String>? studentName;
  int get getStudentLength => studentName!.length;
  Android({this.studentName});

  @override
  void android() {
    print("Android");
  }
}

class Ios implements buildIos {
  String className = 'ios';
  int numberStudent = 13;
  int get getNumber => numberStudent;
  List<String>? studentName;
  int get getStudentLength => studentName!.length;
  Ios({this.studentName});

  @override
  void ios() {
    print("Ios");
  }
}

class Web implements buildWeb {
  String className = 'web';
  int numberStudent = 14;
  int get getNumber => numberStudent;
  List<String>? studentName;
  int get getStudentLength => studentName!.length;
  Web({this.studentName});

  @override
  void web() {
    print("Web");
  }
}

abstract class buildAndroid {
  void android();
}

abstract class buildIos {
  void ios();
}

abstract class buildWeb {
  void web();
}

abstract class buildDesktop {
  void desktop();
}

extension calculate on int {
  int remainMembers(int a) {
    return this - a;
  }
}

void main(List<String> args) {
  //bài 2
  var flutter = Flutter(studentName: ["A", "B"]);
  var android = Android(studentName: ["B", "C", "D"]);
  var ios = Ios(studentName: ["D", "E", "F"]);
  var web = Web(studentName: ["F"]);

  int rmFt = flutter.getNumber.remainMembers(flutter.getStudentLength);
  int rmAd = android.getNumber.remainMembers(android.getStudentLength);
  int rmIos = ios.getNumber.remainMembers(ios.getStudentLength);
  int rmWeb = web.getNumber.remainMembers(web.getStudentLength);
  print("remainFlutter -> ${rmFt}");
  print("remainAndroid -> ${rmAd}");
  print("remainIos -> ${rmIos}");
  print("remainWeb -> ${rmWeb}");

  //bài 3
  for (int i = 0; i < rmFt; i++) {
    int rd = Random().nextInt(25);
    String char = String.fromCharCode(rd + 65);
    //print(flutter.studentName!.contains("P"));
    while (flutter.studentName!.contains(char)) {
      rd = Random().nextInt(25);
      char = String.fromCharCode(rd + 65);
    }
    flutter.studentName!.add(char);
  }
  print("flutter -> ${flutter.studentName}");
  for (int i = 0; i < rmAd; i++) {
    int rd = Random().nextInt(25);
    String char = String.fromCharCode(rd + 65);
    while (android.studentName!.contains(char)) {
      rd = Random().nextInt(25);
      char = String.fromCharCode(rd + 65);
    }
    android.studentName!.add(char);
  }
  print("Android -> ${android.studentName}");
  for (int i = 0; i < rmIos; i++) {
    int rd = Random().nextInt(25);
    String char = String.fromCharCode(rd + 65);
    while (ios.studentName!.contains(char)) {
      rd = Random().nextInt(25);
      char = String.fromCharCode(rd + 65);
    }
    ios.studentName!.add(char);
  }
  print("Ios -> ${ios.studentName}");
  for (int i = 0; i < rmWeb; i++) {
    int rd = Random().nextInt(25);
    String char = String.fromCharCode(rd + 65);
    while (web.studentName!.contains(char)) {
      rd = Random().nextInt(25);
      char = String.fromCharCode(rd + 65);
    }
    web.studentName!.add(char);
  }
  print("Web -> ${web.studentName}");
}
