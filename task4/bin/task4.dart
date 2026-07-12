import 'dart:io';

int add(int a, int b) {
  return a + b;
}

int subtract(int a, int b) {
  return a - b;
}

int multiply(int a, int b) {
  return a * b;
}

double divide(double a, double b) {
  return a / b;
}

void main() {
  print("Enter first number:");
  int a = int.parse(stdin.readLineSync()!);

  print("Enter second number:");
  int b = int.parse(stdin.readLineSync()!);

  print("Enter operator (+, -, *, /):");
  String op = stdin.readLineSync()!;

  if (op == "+") {
    print(add(a, b));
  } else if (op == "-") {
    print(subtract(a, b));
  } else if (op == "*") {
    print(multiply(a, b));
  } else if (op == "/") {
    print(divide(a.toDouble(), b.toDouble()));
  } else {
    print("Invalid operator");
  }
}
