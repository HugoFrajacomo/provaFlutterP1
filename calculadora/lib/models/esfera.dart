class Esfera {
  double radio;

  Esfera(this.radio);

  double volume() {
    return (4 / 3) * 3.141592653589793 * radio * radio * radio;
  }

  double areaSuperficie() {
    return 4 * 3.141592653589793 * radio * radio;
  }
}
