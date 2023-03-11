class Person {
  String name;
  int age;
  String? address;
  String? phone;
  String? email;

  Person({
    required this.name,
    required this.age,
    this.address,
    this.phone,
    this.email,
  });

  void info() {
    print(
        'My name is $name, my age is $age, my address is $address, my phone is $phone, my email is $email');
  }
}
