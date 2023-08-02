import 'calculator.dart';

void main() {
  List<Student> students = [
    Student('Khalid', 99.3),
    Student('Ali', 87.7),
    Student('Sameer', 65.7),
    Student('Mahhamad')
  ];

  GradesCalculator gradesCalculator = GradesCalculator();
  for (var student in students) {
    gradesCalculator.printGrade(student);
  }
}

