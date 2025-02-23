import 'dart:io';

void BT1() {
  String name = 'Lee sang hook';
  int age = 19;
  print('hello, toi la $name va toi $age tuoi');
}

void BT2() {
  double a = 1001;
  dynamic b = 7;
  print('sum(a,b) = ${a + b}');
  print('difference(a,b) = ${a - b}');
  print('product(a,b)= ${a * b}');
  if (b != 0) {
    print('quotient(a,b)= ${a / b}');
  } else {
    print(' b =0, cannot divided');
  }
}

void BT3() {
  String name = 'nguyen thi ha';
  int tuoi = 20;
  double diemTB = 3.9;
  String gtinh = 'NU';
  print(name);
  print('tuoi: $tuoi');
  print('gioi tinh: $gtinh');
  print(' DiemTB: $diemTB');
}

void BT4() {
  String? a = stdin.readLineSync();
  String? b = stdin.readLineSync();

  double new_a = double.tryParse(a ?? '') ?? 0;
  double new_b = double.tryParse(b ?? '') ?? 0;

  dynamic c = (new_a * new_b) <= 0 ? 'loi' : (new_a * new_b);

  print(c);
}

void BT5() {
  double celsius = 100;
  double fahrenheit = (celsius * 9 / 5) + 32;
  print('$celsius celsius =$fahrenheit fahrenheit ');
}

void BT6() {
  double a = 3;
  double b = -2;
  var c = a - b >= 0 ? a : b;
  print(c);
}

void BT7() {
  double a = -5;
  var b = a < 0 ? (-a) : a;
  print('$a, $b');
}

void BT8() {
  double years = 1984;
  var check = ((years % 4 == 0) && (years % 100 != 0)) | (years % 400 == 0)
      ? true
      : false;
  print(check);
}

void main() {
  BT1();
  print('----------------------------------------');
  BT2();
  print('----------------------------------------');
  BT3();
  print('----------------------------------------');
  BT4();
  print('----------------------------------------');
  BT5();
  print('----------------------------------------');
  BT6();
  print('----------------------------------------');
  BT7();
  print('----------------------------------------');
  BT8();
  print('----------------------------------------');
}
