import 'dart:io';

void main() {
  print("Hola bienvenido al calculador de años");

  print("escribe tu nombre");
  String? nameInput = stdin.readLineSync();
  print("un gusto conocerte $nameInput");
  print("escribe tu fecha de nacimiento en formato dd/mm/yyyy:");
  String? birthdayInput = stdin.readLineSync();
  DateTime? dateConverted = convertToDateTime(birthdayInput!);
  if (dateConverted == null) {
    print("la fecha de nacimiento es invalida, nos enviaste: $birthdayInput");
    return;
  }
  var person = Person(
    name: nameInput,
    birthday: dateConverted,
    age: DateTime.now().year - dateConverted.year,
  );

  print("tu nombre: ${person.name}");
  print("tu fecha de nacimiento: ${person.birthday}");
  print("tu edad es: ${person.age} años ");
}

DateTime? convertToDateTime(String date) {
  List<String> parts = date.split("/");
  if (parts.length != 3) return null;
  return DateTime.tryParse("${parts[2]}-${parts[1]}-${parts[0]}");
}

class Person {
  final String? name;
  final DateTime? birthday;
  final int? age;
  Person({this.name, this.birthday, this.age});
}
