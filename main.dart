import 'group.dart';
import 'person_classes/instructor.dart';
import 'person_classes/student.dart';

void main() {
  // student
  Student studentOne = Student(name: 'Ahmed', age: 12, faculty: 'Eng');
  Student studentTwo = Student(name: 'Mohamed', age: 12, faculty: 'Eng');

  List<String> listOfLessons = ['Math', 'Physics'];

  // instructor
  Instructor instructorOne = Instructor(
    name: 'Khaled',
    age: 40,
    listOfLessons: listOfLessons,
  );

  // group

  Group groupOne = Group(
    date: 'Dec',
    instructor: instructorOne,
    listOfStudents: [
      studentOne,
      studentTwo,
    ],
    name: 'Sat26',
  );

  groupOne.addNewStudent(Student(name: '', age: 10, faculty: ''));
  groupOne.deleteStudent(studentOne);

  groupOne.showStudentNames();

  studentOne.attended(1);
  
  print(studentOne.attend);
}
