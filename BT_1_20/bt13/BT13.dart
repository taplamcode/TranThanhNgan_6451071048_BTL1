import 'dart:io';

void main() {
  stdout.write('Nhập cân nặng (kg): ');
  dynamic weightInput = stdin.readLineSync();

  stdout.write('Nhập chiều cao (m): ');
  dynamic heightInput = stdin.readLineSync();

  // Chuyển chuỗi sang số (num)
  dynamic weight = num.tryParse(weightInput ?? '');
  dynamic height = num.tryParse(heightInput ?? '');

  // Type test bằng "is"
  if (weight is num && height is num) {
    if (height <= 0) {
      print('Chiều cao phải lớn hơn 0.');
      return;
    }

    double bmi = weight / (height * height);
    print('BMI của bạn là: ${bmi.toStringAsFixed(2)}');
  } else {
    print('Dữ liệu không hợp lệ. Vui lòng nhập số cho cân nặng và chiều cao.');
  }
}