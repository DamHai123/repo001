import 'dart:io';

class Nguoi {
//  bool? alive;
  String? name;
  int? age;

  void talking() {
    for (var i = 0; i < 6; i++) {
      print('xin chao, $name');
    }
    ;
  }

  Nguoi.from(Nguoi other) {
    name = other.name;
    age = other.age;
  }
  Nguoi(
    this.name,
    this.age,
  );
}

void input(Nguoi obj) {
  var out_name = '';
  var out_age = 0;
  for (int i = 0; i < 2; i++) {
    dynamic a = stdin.readLineSync();
    switch (i) {
      case 0:
        var out_name = a;
        obj.name = a;
      case 1:
        var out_age = int.tryParse(a);
        obj.age = out_age;
    }
    ;
  }
  ;
}

void main() {
  Nguoi mark = Nguoi('Mark', 500);
  Nguoi ram = Nguoi('', 0);
  List<Nguoi> list_nguoi = [];
  for (int i = 0; i < 5; i++) {
    input(ram);
    list_nguoi.add(Nguoi.from(ram));
  }
  ;
  for (var i in list_nguoi) {
    if (!((i.age == null) || (i.name == ''))) {
      print('[${i.name}, ${i.age}]');
    }
    ;
  }
}
