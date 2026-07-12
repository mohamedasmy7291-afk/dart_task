import 'dart:io';

void main() {
  List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
  List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];

  List<int> common = [];

  for (int i = 0; i < a.length; i++) {
    if (b.contains(a[i]) && !common.contains(a[i])) {
      common.add(a[i]);
    }
  }

  print(common);
}
