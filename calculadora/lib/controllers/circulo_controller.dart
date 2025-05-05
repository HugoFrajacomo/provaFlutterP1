import '../models/circulo.dart';

class CirculoController {
  Circulo? circulo;
  double raio = 0.0;

  void setRaio(double raio) {
    circulo = Circulo(raio);
    this.raio = raio;
  }

  double getArea() {
    if (circulo != null) {
      return circulo?.area() ?? 0.0;
    } else {
      throw Exception("Raio não definido.");
    }
  }

  double getPerimetro() {
    if (circulo != null) {
      return circulo?.perimetro() ?? 0.0;
    } else {
      throw Exception("Raio não definido.");
    }
  }
}
