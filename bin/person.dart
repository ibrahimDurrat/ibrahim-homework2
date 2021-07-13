class Person {
  late String id;
  late String name;
  late int age;
  late String address;

  Person({
    required this.id,
    required this.name,
    required this.age,
    required this.address,
  });

  void personData() => print('Person ID: $id, Name: $name, Age: $age');
}
