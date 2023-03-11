import 'person.dart';

class Student extends Person {
  int attend;
  String faculty;

  Student({
    required super.name,
    required super.age,
    this.attend = 0,
    required this.faculty,
  });

  void attended(int number) {
    attend += number;
  }
}
