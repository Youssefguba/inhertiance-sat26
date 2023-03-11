import 'person.dart';

class Instructor extends Person {
  List<String> listOfLessons;

  Instructor({
    required super.name,
    required super.age,
    required this.listOfLessons,
  });

  void addLesson(String lesson) {
    listOfLessons.add(lesson);
  }

  void showLessons() {
    for (var lesson in listOfLessons) {
      print('Lesson is $lesson');
    }
  }

  @override
  void info() {
    print(
        'My name is $name is instructor, my age is $age, my address is $address, my phone is $phone, my email is $email');
  }
}
