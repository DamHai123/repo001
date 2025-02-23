import 'dart:io';

String abc = 'qwertyuiopasdfghjklzxcvbnm';
String ABC = abc.toUpperCase();
List<String> alphabet = abc.split('');
List<String> ALPHABET = ABC.split('');

List<String> nguyen_am = ['u', 'e', 'o', 'a', 'i'];
int space_count = 0;
int nguyen_am_count = 0;
int chu_cai = 0;
void main() {
  String? input = stdin.readLineSync() ?? '';
  for (int i = 0; i < input.length; i++) {
    if (nguyen_am.contains(input[i])) {
      //đếm số nguyên âm
      nguyen_am_count += 1;
      chu_cai += 1;
    } else if (input[i] == ' ') {
      //đếm dấu cách
      space_count += 1;
    } else if ((alphabet.contains(input[i])) || (ALPHABET.contains(input[i]))) {
      //đếm chữ cái bình thường

      chu_cai += 1;
    }
    ;
  }
  print('so nguyen am la $nguyen_am_count');
  print('so dau cach la $space_count');
  print('so ky tu dac biet la ${input.length - chu_cai - space_count}');
}
