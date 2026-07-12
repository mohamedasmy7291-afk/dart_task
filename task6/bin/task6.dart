import 'dart:io';

void main() {
  List<String> names = [];

  for (int i = 1; i <= 10; i++) {
    print("Enter name $i:");
    names.add(stdin.readLineSync()!);
  }

  List<String> unique = [];

  for (int i = 0; i < names.length; i++) {
    if (!unique.contains(names[i])) {
      unique.add(names[i]);
    }
  }

  unique.sort();

  print("Unique Names:");

  for (int i = 0; i < unique.length; i++) {
    print(unique[i]);
  }
}
