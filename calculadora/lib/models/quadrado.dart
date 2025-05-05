class Quadrado {
  double lado;

  Quadrado(this.lado);

  double area() {
    return lado * lado;
  }

  double perimetro() {
    return lado * 4;
  }
}
