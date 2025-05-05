import 'dart:math';

class Triangulo {
  double base;
  double altura;

  Triangulo(this.base, this.altura);

  double area() {
    return (base * altura) / 2;
  }

  double perimetro() {
    return base + altura + sqrt(base * base + altura * altura);
  }
}
