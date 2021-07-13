import 'dart:io';

import 'student.dart';

void main(List<String> arguments) {


   var stu = Students();
  var subsss = Students().SubjectGrades();
  lable:
  while (true) {
    print('1. add');
    print('2. remove');
    print('3. data');
    print('4. end');
    var op = stdin.readLineSync()!;

    switch (op) {
      // 'Omar Saad'

      case '1':
        print('Enter Students Data as : id name age address email phone');
        var data = stdin.readLineSync()!.split(' ');
        stu.addStudent(
          id: data[0],
          name: data[1],
          age: int.parse(data[2]),
          address: data[3],
          email: data[4],
          phone: data[5],
          subjects: subsss ,
        );
        break;
      case '2':
        print('Enter Student id');
        var id = stdin.readLineSync()!;
        stu.removeStudent(id);
        break;
         case '3':
        
         print('Enter Student id');
        var id = stdin.readLineSync()!;
        print('Studint Data');
         if (id == '') { 
           stu.studentData();}
         else {
        stu.findStudent(id);
         }
         break;
      case '4':
        break lable;
      case '5':
        print('Enter Student id');
        var id = stdin.readLineSync()!;
        stu.passOrnot(id);
        break ;
      //   case '6':
      // print(stu.sub);
      //   break;
      default:
    }
  }
}

