import 'dart:io';

void main() {
  stdout.write("Nhập một số: ");
  int n = int.parse(stdin.readLineSync()!);

  if (n % 2 == 0) {
    print("$n là số chẵn");
  } else {
    print("$n là số lẻ");
  }
}