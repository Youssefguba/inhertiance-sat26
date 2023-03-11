import 'person_classes/instructor.dart';
import 'person_classes/student.dart';

class Group {
  String name;
  Instructor instructor;
  List<Student> listOfStudents;
  String date;

  // composition
  Group({
    required this.date,
    required this.instructor,
    required this.listOfStudents,
    required this.name,
  });

  void addNewStudent(Student student) {
    listOfStudents.add(student);
    print('Student added successfuly');
    student.info();
  }

  void deleteStudent(Student student) {
    if (listOfStudents.isEmpty) {
      print('List is Empty!');
    } else if (listOfStudents.contains(student)) {
      listOfStudents.remove(student);
      print('Student is removed');
    } else {
      print('Student is not found!');
    }
  }

  void showStudent() {
    for (var student in listOfStudents) {
      student.info();
    }
  }

  void showStudentNames() {
    for (var student in listOfStudents) {
      print(student.name);
    }
  }
}
