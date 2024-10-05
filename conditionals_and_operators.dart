import 'dart:io';

void main() {
  print("ingrese el primer numero");

  double? a = double.tryParse(stdin.readLineSync()!);
  print("ingrese el segundo nùmero:");
  double? b = double.tryParse(stdin.readLineSync()!);

  const indeterminado = "indeterminado";
  if (a != null && b != null) {
    print(
        "Suma: ${a + b}, Resta: ${a - b}, Multiplicacion:${a * b}, Division:${(b != 0 ? a / b : indeterminado)}");
  } else {
    print("Por favor, ingrese valoes numericos validos");
  }
}
