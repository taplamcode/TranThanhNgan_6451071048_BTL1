import 'dart:io';

void main() {
  // Yêu cầu người dùng nhập số lượng số Fibonacci cần tạo
  print('Nhập số lượng số Fibonacci bạn muốn tạo:');
  
  int? n;
  
  // Đảm bảo người dùng nhập số hợp lệ
  while (n == null || n <= 0) {
    String? input = stdin.readLineSync();
    n = int.tryParse(input ?? '');
    
    if (n == null || n <= 0) {
      print('Vui lòng nhập một số nguyên dương hợp lệ:');
    }
  }
  
  // Tạo và hiển thị dãy số Fibonacci
  print('\n$n số Fibonacci đầu tiên:');
  
  for (int i = 0; i < n; i++) {
    print('F($i) = ${fibonacci(i)}');
  }
  
  // Hiển thị dãy số trên một dòng
  print('\nDãy số: ${generateFibonacciSequence(n).join(', ')}');
}

// Hàm tính số Fibonacci thứ n
int fibonacci(int n) {
  if (n <= 1) {
    return n;
  }
  
  int a = 0, b = 1;
  for (int i = 2; i <= n; i++) {
    int temp = a + b;
    a = b;
    b = temp;
  }
  return b;
}

// Hàm tạo danh sách n số Fibonacci đầu tiên
List<int> generateFibonacciSequence(int n) {
  List<int> sequence = [];
  
  for (int i = 0; i < n; i++) {
    if (i <= 1) {
      sequence.add(i);
    } else {
      sequence.add(sequence[i - 1] + sequence[i - 2]);
    }
  }
  
  return sequence;
}