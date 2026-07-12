import 'dart:io';

void main() {
  List<Map<String, dynamic>> students = [];

  while (true) {
    print("1- Add Student");
    print("2- Search Student");
    print("3- Update Student");
    print("4- Delete Student");
    print("5- Display All Students");
    print("6- Display Highest Grade");
    print("7- Exit");

    int choice = int.parse(stdin.readLineSync()!);

    if (choice == 1) {
      print("Enter ID:");
      int id = int.parse(stdin.readLineSync()!);

      print("Enter Name:");
      String name = stdin.readLineSync()!;

      print("Enter Age:");
      int age = int.parse(stdin.readLineSync()!);

      print("Enter Grade:");
      int grade = int.parse(stdin.readLineSync()!);

      students.add({
        "id": id,
        "name": name,
        "age": age,
        "grade": grade,
      });
    } else if (choice == 2) {
      print("Enter ID:");
      int id = int.parse(stdin.readLineSync()!);

      bool found = false;

      for (int i = 0; i < students.length; i++) {
        if (students[i]["id"] == id) {
          print(students[i]);
          found = true;
        }
      }

      if (!found) {
        print("Student not found");
      }
    } else if (choice == 3) {
      print("Enter ID:");
      int id = int.parse(stdin.readLineSync()!);

      for (int i = 0; i < students.length; i++) {
        if (students[i]["id"] == id) {
          print("Enter New Grade:");
          students[i]["grade"] = int.parse(stdin.readLineSync()!);
        }
      }
    } else if (choice == 4) {
      print("Enter ID:");
      int id = int.parse(stdin.readLineSync()!);

      students.removeWhere((student) => student["id"] == id);
    } else if (choice == 5) {
      for (int i = 0; i < students.length; i++) {
        print(students[i]);
      }
    } else if (choice == 6) {
      if (students.isNotEmpty) {
        Map<String, dynamic> highest = students[0];

        for (int i = 1; i < students.length; i++) {
          if (students[i]["grade"] > highest["grade"]) {
            highest = students[i];
          }
        }

        print(highest);
      } else {
        print("No students");
      }
    } else if (choice == 7) {
      break;
    } else {
      print("Invalid Choice");
    }
  }
}
