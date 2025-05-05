class Cubo {
  double lado;

  Cubo(this.lado);

  double volumen() {
    return lado * lado * lado;
  }

  double areaSuperficie() {
    return 6 * lado * lado;
  }
}
