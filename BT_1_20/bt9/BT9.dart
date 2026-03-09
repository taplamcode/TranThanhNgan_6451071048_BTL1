import 'dart:io';

bool laSoNguyenTo(int n) {
  if (n < 2) return false;
  if (n == 2) return true;
  if (n % 2 == 0) return false;

  for (int i = 3; i * i <= n; i += 2) {
    if (n % i == 0) return false;
  }
  return true;
}

void main() {
  stdout.write('Nhập một số nguyên: ');
  String? input = stdin.readLineSync();

  int? n = int.tryParse(input ?? '');
  if (n == null) {
    print('Dữ liệu không hợp lệ.');
    return;
  }

  if (laSoNguyenTo(n)) {
    print('$n là số nguyên tố.');
  } else {
    print('$n không phải là số nguyên tố.');
  }
}