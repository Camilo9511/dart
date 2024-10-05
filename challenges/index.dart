import 'dart:io';
import 'dart:math';

//Positive power
class Challenge1 {
  void run() {
    print("ingrese un numero:");

    String? input = stdin.readLineSync();
    double? number = double.tryParse(input!);

    if (number == null) {
      print("Entrada no válida.");
      return;
    }

    if (number > 0) {
      double result = number * number;
      print("Resultado: $result");
    } else if (number == 0) {
      print("Resultado: 0");
    } else {
      print("Número negativo.");
    }
  }
}

//Circle perimetrer
class Challenge2 {
  void run() {
    print("Por favor, ingresa el radio del círculo:");
    String? input = stdin.readLineSync();
    double? radio = double.tryParse(input!);

    if (radio == null || radio < 0) {
      print("Entrada no válida. Por favor ingresa un número positivo.");
      return;
    }

    double perimetro = 2 * pi * radio;

    print(
        "El perímetro del círculo con radio $radio es: ${perimetro.toStringAsFixed(2)}");
  }
}

class Challenge3 {
  void run() {
    print("Por favor, ingresa un número entero no negativo:");
    String? input = stdin.readLineSync();
    int? numero = int.tryParse(input!);

    if (numero == null || numero < 0) {
      print(
          "Entrada no válida. Por favor ingresa un número entero no negativo.");
      return;
    }

    int resultado = factorial(numero);

    print("El factorial de $numero es: $resultado");
  }

  int factorial(int n) {
    if (n == 0 || n == 1) {
      return 1;
    } else {
      return n * factorial(n - 1);
    }
  }
}
