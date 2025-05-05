class Circulo {
  double radio;

  Circulo(this.radio);

  double area() {
    return 3.14 * radio * radio;
  }

  double perimetro() {
    return 2 * 3.14 * radio;
  }
}
