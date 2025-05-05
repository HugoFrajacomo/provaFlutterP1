import '../models/retangulo.dart';

class RetanguloController {
  Retangulo? retangulo;

  double altura = 0.0;
  double base = 0.0;

  void setDimensao(double base, double altura) {
    this.altura = altura;
    this.base = base;
    retangulo = Retangulo(base, altura);
  }

  double getArea() {
    if (retangulo != null) {
      return retangulo?.area() ?? 0.0;
    } else {
      throw Exception("Dimensões não definidas.");
    }
  }

  double getPerimetro() {
    if (retangulo != null) {
      return retangulo?.perimetro() ?? 0.0;
    } else {
      throw Exception("Dimensões não definidas.");
    }
  }
}
