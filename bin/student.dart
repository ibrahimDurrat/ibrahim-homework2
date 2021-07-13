// - Create Student class that contains:
//     - Email
//     - Phone
//     - Empty Map of Subjects

//     > Map of Subjects like {'Subject Name': grade} ⇒ {'Subject1': 90, 'Subject2': 100, so on}

//     - Function addSubject(String name, double grade);
//     - Function studentData(); that print specific student all data like id, name, ....., map of subjects


import 'dart:io';

import 'Person.dart';
// relation with the person class
class Student extends Person {

// attribute
  String? email;
  String? phone;
  Map? subjects = {};

// constractor ---named->>{}
  Student({required String id, required String name, required int age ,required String address, this.email, this.phone, this.subjects}): super(id: id, name: name, age: age, address: address,);
  
    @override
  void personData() {
    print('Email: $email, Phone: $phone, Subjects & grades: $subjects');
    super.personData();}
  }
    class Students {
      List<Student> stud = [];
      Map sub = {};
    
  void addStudent({
    required String id,
    required String name,
    required int age,
    required String address,
    required String email,
    required String phone,
    required Map subjects,
    })
   {
     
    stud.add(Student(
      id: id,
      name: name,
      age: age,
      address: address,
      email: email,
      phone: phone,
      subjects: subjects,
    ));
   }

  Map addSubject({required String subjectName,required double grade,})
  {
    sub[subjectName] = grade;
    return sub;
  }
  
  Map SubjectGrades()
  {
    // ignore: omit_local_variable_types
    Map subs = {};
    subs.clear();
    var name;
    lable:
    while ((true)) {
      
    stdout.write('enter name of subject or let it empty \n');
     name = stdin.readLineSync();
    if (name == '')
    {  break lable; }
    stdout.write('enter the grade \n');
    var grad = double.parse(stdin.readLineSync()!);
     subs = addSubject(subjectName: name!, grade: grad);

    } 
    return subs;
      }
  
  void removeStudent(String id){

    stud.removeWhere((student) => student.id == id);
  }

  void findStudent(String id){

    stud.firstWhere((student) => student.id == id).personData();

  }

  void passOrnot(String id){
  var stInx = stud.firstWhere((student) => student.id == id);
 print (stInx);
print (stInx.runtimeType);
  }

  void studentData(){
    stud.forEach((element) {
      element.personData();
    });

  }
}
