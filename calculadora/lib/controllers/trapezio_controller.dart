import '../models/trapezio.dart';

class TrapezioController {
  Trapezio? trapezio;
  double baseMaior = 0.0;
  double baseMenor = 0.0;
  double altura = 0.0;
  double lado1 = 0.0;
  double lado2 = 0.0;

  void setDimensoes(
    double baseMaior,
    double baseMenor,
    double altura,
    double lado1,
    double lado2,
  ) {
    trapezio = Trapezio(
      baseMaior: baseMaior,
      baseMenor: baseMenor,
      altura: altura,
      lado1: lado1,
      lado2: lado2,
    );
    this.baseMaior = baseMaior;
    this.baseMenor = baseMenor;
    this.altura = altura;
  }

  double getArea() {
    if (trapezio != null) {
      return trapezio?.area() ?? 0.0;
    } else {
      throw Exception("Dimensões não definidas.");
    }
  }

  double getPerimetro() {
    if (trapezio != null) {
      return trapezio?.perimetro() ?? 0.0;
    } else {
      throw Exception("Dimensões não definidas.");
    }
  }
}
