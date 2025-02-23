int CanLe(String a) {
  return 20 - a.length;
}

class SinhVien {
  String studentId = '';
  String fullName = '';
  int age = 0;
  double averageGrade = 0;

  SinhVien(this.studentId, this.fullName, this.age, this.averageGrade);

  void hienThiThongTin(SinhVien a) {
    print('ID hoc sinh: ${a.studentId} ');
    print('ho ten: ${a.fullName} ');
    print('tuoi : ${a.age} ');
    print('diem TB : ${a.averageGrade} ');
    print('\n');
  }

  void hienThiThongTinTheoTungDong(SinhVien i) {
    String print_out = '${i.studentId}' +
        ' ' * (CanLe(i.studentId) - 5) +
        '${i.fullName}' +
        ' ' * CanLe(i.fullName) +
        '${i.age}' +
        ' ' * (CanLe(i.age.toString()) - 12) +
        '${i.averageGrade}';
    print(print_out);
  }

  bool kiemTraHocBong(SinhVien a) {
    return a.averageGrade > 8.0;
  }
}

SinhVien a = SinhVien('001', 'Nguyen Van A', 17, 7.8);
SinhVien b = SinhVien('002', 'Tran Thi Bao Cham', 17, 8);
SinhVien c = SinhVien('003', 'Nguyen Sinh Sac', 17, 9.6);
List<SinhVien> DS = [a, b, c];
void main() {
  print('ID hoc sinh' +
      ' ' * 4 +
      'ten hoc sinh' +
      ' ' * 8 +
      'tuoi' +
      ' ' * 4 +
      'diem TB');
  print('');
  for (var i in DS) {
    i.hienThiThongTinTheoTungDong(i);
  }
}
