void main() {
  // Tạo một List<int>
  List<int> numbers = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 15, 20, 25, 30];

  print('Danh sách các số: $numbers');
  print('\nCác số chẵn trong danh sách:');

  // Sử dụng forEach kết hợp với Anonymous Function (Lambda)
  // Sử dụng Short-circuiting (&&) để kiểm tra số chẵn
  numbers.forEach((number) {
    if (number % 2 == 0 && number > 0) {
      print('  $number');
    }
  });

  print('\n--- Ví dụ với Short-circuiting (||) ---');
  print('Các số chẵn hoặc chia hết cho 5:');

  numbers.forEach((number) {
    // Sử dụng || để kiểm tra điều kiện: số chẵn HOẶC chia hết cho 5
    if (number % 2 == 0 || number % 5 == 0) {
      print('  $number');
    }
  });

  print('\n--- Ví dụ kết hợp && và || ---');
  print('Các số (chẵn và > 5) hoặc chia hết cho 15:');

  numbers.forEach((number) {
    if ((number % 2 == 0 && number > 5) || number % 15 == 0) {
      print('  $number');
    }
  });
}