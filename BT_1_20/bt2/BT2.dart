import 'dart:convert';
import 'dart:io';

void main() {
  stdout.encoding = Encoding.getByName('utf-8')!;

  stdout.write('Nhập tên của bạn: ');
  String name = stdin.readLineSync()!;

  stdout.write('Nhập tuổi của bạn: ');
  int age = int.parse(stdin.readLineSync()!);

  int yearsLeft = 100 - age;
  print('$name, bạn sẽ sống tới 100 tuổi trong $yearsLeft năm nữa.');
}