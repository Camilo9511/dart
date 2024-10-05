import 'dart:io';
import 'challenges/index.dart';
import 'menu/index.dart';

void main() {
  print("ingrese su nombre");
  String? nombre = stdin.readLineSync()?.toLowerCase();
  print("Hola, $nombre por favor elige un ejercicio del siguiente menu");

  var menu = new Menu();
  menu.MostrarMenu();

  while (true) {
    String? entrada = stdin.readLineSync()?.toLowerCase();

    if (entrada == "q" || entrada == "exit") {
      break;
    }

    int? eleccion = int.tryParse(entrada!);
    if (eleccion != null && eleccion >= 1 && eleccion <= 3) {
      switch (eleccion) {
        case 1:
          var challenge1 = Challenge1();
          challenge1.run();
          break;
        case 2:
          var challenge2 = Challenge2();
          challenge2.run();
          break;
        case 3:
          var challenge3 = Challenge3();
          challenge3.run();
          break;
        default:
          print("Presiona una tecla para continuar...");
          stdin.readLineSync();
          menu.MostrarMenu();
          break;
      }
    } else {
      print(
          "Opcion no valida.Por favor, ingrese un numero entre 1 y 3, o q o exit para salir");
    }
  }
}
