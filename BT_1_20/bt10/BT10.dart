void main() {
  List<int> a = [5, 10, 15, 20, 25];
  List<int> b = [];

  if (a.isNotEmpty) {
    b.add(a.first); // phần tử đầu
    if (a.length > 1) {
      b.add(a.last); // phần tử cuối (nếu khác phần tử đầu)
    }
  }

  print('Danh sách ban đầu: $a');
  print('Danh sách mới: $b');
}