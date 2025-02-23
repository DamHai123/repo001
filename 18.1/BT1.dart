import 'dart:io';

List<dynamic> list_diem = [
  ['van', 6.5],
  ['toan', 6.5],
  ['sinh', 6.5],
  ['anh', 6.5],
  ['su', 6.5]
];
int quantity_diem = list_diem.length;
//double a = list_diem.reduce((a, b) => a + b);
double tong_diem = 0;
double diem_TB = 0;
double diem = 0;

void nhap_diem() {
  for (int i = 0; i < quantity_diem; i++) {
    print('nhap diem mon ${list_diem[i][0]}');
    String? input = stdin.readLineSync() ?? '';
    double diem = double.tryParse(input ?? '') ?? 0;
    list_diem[i][1] = diem;
  }
}

void tinh_diem_TB() {
  nhap_diem();
  for (int i = 0; i < quantity_diem; i++) {
    tong_diem += list_diem[i][1];
  }
  diem_TB = tong_diem / quantity_diem;
  String lam_tron = diem_TB.toStringAsFixed(2);
  diem_TB = double.parse(lam_tron);
}

void main() {
  tinh_diem_TB();

  print('diem trung binh cua ban la: $diem_TB');
  if (diem_TB >= 7.9) {
    print('HSG');
  } else if (diem_TB >= 6.45) {
    print('HS Kha');
  } else {
    print('TB hoac Yeu');
  }
}
