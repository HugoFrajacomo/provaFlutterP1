import '../models/quadrado.dart';

class QuadradoController {
  Quadrado? quadrado;
  double lado = 0.0;

  void setLado(double lado) {
    quadrado = Quadrado(lado);
    this.lado = lado;
  }

  double getArea() {
    if (quadrado != null) {
      return quadrado?.area() ?? 0.0;
    } else {
      throw Exception("Lado não definido.");
    }
  }

  double getPerimetro() {
    if (quadrado != null) {
      return quadrado?.perimetro() ?? 0.0;
    } else {
      throw Exception("Lado não definido.");
    }
  }
}
