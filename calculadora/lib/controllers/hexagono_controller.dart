import '../models/hexagono.dart';

class HexagonoController {
  Hexagono? hexagono;

  void setLado(double lado) {
    hexagono = Hexagono(lado);
  }

  double getArea() {
    if (hexagono != null) {
      return hexagono?.calcularArea() ?? 0.0;
    } else {
      throw Exception("Lado não definido.");
    }
  }

  double getPerimetro() {
    if (hexagono != null) {
      return hexagono?.calcularPerimetro() ?? 0.0;
    } else {
      throw Exception("Lado não definido.");
    }
  }
}
