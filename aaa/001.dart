import 'dart:io';

int choice = 2;
var RAMM = [];
List<String> DS = ['Nguyen Thanh Nam', 'Tran Thi Phuong'];
String RAM = '';
main() {
  while (true) {
    DS.remove('');
    print(
        '1. Nhap vao sinh vien \n 2. In ra danh sach \n 3. In ra danh sach dc sap xep \n 0.EXIT');
    String? input = stdin.readLineSync() ?? '';
    if (input == '0') {
      break;
    } else {
      switch (input) {
        case '1':
          print('name:');
          String? ten = stdin.readLineSync() ?? '';
          RAM = ten;
          DS.add(RAM);
          RAM = '';
          String? input = stdin.readLineSync() ?? '';

        case '2':
          for (var i in DS) {
            print(i);
          }
          String? input = stdin.readLineSync() ?? '';

        case '3':
          RAMM = DS;
          RAMM.sort();
          print(RAMM);
          RAMM = [];
          String? input = stdin.readLineSync() ?? '';

        default:
          print('loi, nhap lai \n');
      }
    }
  }
}
