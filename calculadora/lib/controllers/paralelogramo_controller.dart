import '../models/paralelogramo.dart';

class ParalelogramoController {
  Paralelogramo? paralelogramo;
  double base = 0.0;
  double altura = 0.0;

  void setDimensoes(double base, double altura) {
    paralelogramo = Paralelogramo(base, altura);
    this.base = base;
    this.altura = altura;
  }

  double getArea() {
    if (paralelogramo != null) {
      return paralelogramo?.area() ?? 0.0;
    } else {
      throw Exception("Dimensões não definidas.");
    }
  }

  double getPerimetro() {
    if (paralelogramo != null) {
      return paralelogramo?.perimetro() ?? 0.0;
    } else {
      throw Exception("Dimensões não definidas.");
    }
  }
}
