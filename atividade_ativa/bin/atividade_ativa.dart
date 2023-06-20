import 'dart:io';

void main(List<String> arguments) {
  String? entrada;
  int? lado;
  List<int> triangulo = [];

  // Recebe 3 valores inteiros
  for (int i = 1; i <= 3; i++) {
    while (true) {
      print(
          'Insira um número inteiro e positivo para o $i° lado do triângulo: ');
      entrada = stdin.readLineSync();
      if (entrada != null && entrada != '' && entrada != ' ') {
        lado = int.tryParse(entrada);
        if (lado != null && lado >= 1) {
          triangulo.add(lado);
          break;
        }
      }
    }
  }

  // Apresenta o tipo de triângulo
  if (triangulo[0] + triangulo[1] <= triangulo[2] ||
      triangulo[0] + triangulo[2] <= triangulo[1] ||
      triangulo[1] + triangulo[2] <= triangulo[0]) {
    print('Não é um triângulo');
  } else if (triangulo[0] == triangulo[1] &&
      triangulo[0] == triangulo[2] &&
      triangulo[1] == triangulo[2]) {
    print('Triângulo Equilátero');
  } else if (triangulo[0] != triangulo[1] &&
      triangulo[0] != triangulo[2] &&
      triangulo[1] != triangulo[2]) {
    print('Triângulo Escaleno');
  } else if (triangulo[0] == triangulo[1] ||
      triangulo[0] == triangulo[2] ||
      triangulo[1] == triangulo[2]) {
    print('Triângulo Isósceles');
  }
}
