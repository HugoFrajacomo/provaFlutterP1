class Paralelogramo {
  double astemenor;
  double asteMaior;

  Paralelogramo(this.astemenor, this.asteMaior);

  double area() {
    return astemenor * asteMaior;
  }

  double perimetro() {
    return (astemenor + asteMaior) * 2;
  }
}
