import 'dart:io';

void main(List<String> arguments) {
  String? entrada;
  int? lado;

  for(int i = 1; i<=3;i++) {
    while(true) {
      print('Insira um número inteiro para o $i° lado do triângulo: ');
      entrada = stdin.readLineSync();
      if(entrada != null && entrada != '' && entrada != ' ') {
        lado = int.tryParse(entrada);
        if(lado != null) {
          break;
        }
      } else {
        print('Entrada nula');
      }
      print(lado);
    }
  }
}