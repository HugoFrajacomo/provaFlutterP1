import '../models/losango.dart';

class LosangoController {
  Losango? losango;
  double lado = 0.0;
  double? altura; // Altura opcional

  void setDimensoes(double lado, [double? altura]) {
    losango = Losango(lado: lado, altura: altura);
    this.lado = lado;
    this.altura = altura;
  }

  double getArea() {
    if (losango != null) {
      return losango!.area();
    } else {
      throw Exception("Dimensões não definidas.");
    }
  }

  double getPerimetro() {
    if (losango != null) {
      return losango!.perimetro();
    } else {
      throw Exception("Dimensões não definidas.");
    }
  }
}
