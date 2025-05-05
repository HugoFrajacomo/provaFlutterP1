import '../models/triangulo.dart';

class TrianguloController {
  Triangulo? triangulo;
  double base = 0.0;
  double altura = 0.0;

  void setDimensoes(double base, double altura) {
    triangulo = Triangulo(base, altura);
    this.altura = altura;
    this.base = base;
  }

  double getArea() {
    if (triangulo != null) {
      return triangulo?.area() ?? 0.0;
    } else {
      throw Exception("Dimensões não definidas.");
    }
  }

  double getPerimetro() {
    if (triangulo != null) {
      return triangulo?.perimetro() ?? 0.0;
    } else {
      throw Exception("Dimensões não definidas.");
    }
  }
}
