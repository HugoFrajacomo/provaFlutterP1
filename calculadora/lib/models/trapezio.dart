class Trapezio {
  double baseMaior;
  double baseMenor;
  double altura;
  double lado1;
  double lado2;

  Trapezio({
    required this.baseMaior,
    required this.baseMenor,
    required this.altura,
    required this.lado1,
    required this.lado2,
  });

  double area() {
    return ((baseMaior + baseMenor) * altura) / 2;
  }

  double perimetro() {
    return baseMaior + baseMenor + lado1 + lado2;
  }
}
