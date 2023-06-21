import 'package:atividade_ativa/atividade_ativa.dart';
import 'package:test/test.dart';

void main() {
  test('Isósceles retorna verdadeiro', () {
    expect(isosceles(3, 3, 4), true);
  });
  test('Isósceles retorna verdadeiro', () {
    expect(isosceles(5, 5, 8), true);
  });

  test('Escaleno retorna verdadeiro', () {
    expect(escaleno(3, 4, 5), true);
  });
  test('Escaleno retorna verdadeiro', () {
    expect(escaleno(5, 6, 7), true);
  });

  test('Equilátero retorna verdadeiro', () {
    expect(equilatero(5, 5, 5), true);
  });
  test('Equilátero retorna verdadeiro', () {
    expect(equilatero(6, 6, 6), true);
  });

  test('Não é triângulo retorna verdadeiro', () {
    expect(naoTriangulo(1, 2, 3), true);
  });
  test('Não é triângulo retorna verdadeiro', () {
    expect(naoTriangulo(5, 15, 9), true);
  });
}

