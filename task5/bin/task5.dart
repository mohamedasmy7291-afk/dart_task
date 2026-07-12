import 'dart:io';

void main() {
  List<int> grades = [];

  for (int i = 1; i <= 5; i++) {
    print("Enter grade $i:");
    grades.add(int.parse(stdin.readLineSync()!));
  }

  int highest = grades[0];
  int lowest = grades[0];
  int sum = 0;
  int passed = 0;

  for (int i = 0; i < grades.length; i++) {
    if (grades[i] > highest) {
      highest = grades[i];
    }

    if (grades[i] < lowest) {
      lowest = grades[i];
    }

    sum += grades[i];

    if (grades[i] >= 50) {
      passed++;
    }
  }

  double average = sum / grades.length;

  print("Highest = $highest");
  print("Lowest = $lowest");
  print("Average = $average");
  print("Passed Students = $passed");
}
