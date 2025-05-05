import '../models/cubo.dart';

class CuboController {
  Cubo? cubo;

  void setLado(double lado) {
    cubo = Cubo(lado);
  }

  double getVolume() {
    if (cubo != null) {
      return cubo?.volumen() ?? 0.0;
    } else {
      throw Exception("Lado não definido.");
    }
  }

  double getAreaSuperficie() {
    if (cubo != null) {
      return cubo?.areaSuperficie() ?? 0.0;
    } else {
      throw Exception("Lado não definido.");
    }
  }
}
