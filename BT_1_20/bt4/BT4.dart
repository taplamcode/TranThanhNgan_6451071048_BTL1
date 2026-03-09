import 'dart:io';

void main() {
  stdout.write("Nhập một số: ");
  int n = int.parse(stdin.readLineSync()!);

  print("Các ước của $n là:");

  for (int i = 1; i <= n; i++) {
    if (n % i == 0) {
      print(i);
    }
  }
}