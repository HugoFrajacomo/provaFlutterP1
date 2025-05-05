import '../models/esfera.dart';

class EsferaController {
  Esfera? esfera;
  double? raio;

  void setRaio(double raio) {
    esfera = Esfera(raio);
    this.raio = raio;
  }

  double getVolume() {
    if (esfera != null) {
      return esfera?.volume() ?? 0.0;
    } else {
      throw Exception("Raio não definido.");
    }
  }

  double getAreaSuperficie() {
    if (esfera != null) {
      return esfera?.areaSuperficie() ?? 0.0;
    } else {
      throw Exception("Raio não definido.");
    }
  }
}
