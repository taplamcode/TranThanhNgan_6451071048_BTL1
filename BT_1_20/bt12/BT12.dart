import 'dart:io';

String daoNguocChuoi(String s) {
  return s.split('').reversed.join('');
}

void main() {
  stdout.write("Nhập một chuỗi: ");
  String str = stdin.readLineSync()!;

  String result = daoNguocChuoi(str);
  print("Chuỗi sau khi đảo ký tự: $result");
}
