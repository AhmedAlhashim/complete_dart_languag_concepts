
class Student {
  String name;
  double? grade;

  Student(this.name, [this.grade]);
}

class GradesCalculator {
  void printGrade(Student student) {
    if (student.grade == null) {
      print(student.name + " Grade not available");
    } else if (student.grade! >= 95 && student.grade! < 100) {
      print(student.name + " A+");
    } else if (student.grade! <= 94 && student.grade! > 90) {
      print(student.name + " A");
    } else if (student.grade! <= 89 && student.grade! > 85) {
      print(student.name + " B+");
    } else if (student.grade! <= 85 && student.grade! > 80) {
      print(student.name + " B");
    } else if (student.grade! <= 79 && student.grade! > 75) {
      print(student.name + " C+");
    } else if (student.grade! <= 75 && student.grade! > 70) {
      print(student.name + " C");
    } else if (student.grade! <= 69 && student.grade! > 65) {
      print(student.name + " D+");
    } else if (student.grade! <= 65 && student.grade! > 60) {
      print(student.name + " D");
    } else if (student.grade! < 60) {
      print(student.name + " F");
    } else {
      print(student.name + " Grade not available");
    }
  }
}