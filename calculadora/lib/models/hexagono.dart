import 'dart:math';

class Hexagono {
  final double lado;

  Hexagono(this.lado);

  double calcularArea() {
    return (3 * lado * lado * sqrt(3)) / 2;
  }

  double calcularPerimetro() {
    return 6 * lado;
  }
}
