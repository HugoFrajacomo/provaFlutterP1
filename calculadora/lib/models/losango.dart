class Losango {
  double lado;
  double? altura; // Altura opcional

  Losango({
    required this.lado,
    this.altura, // Altura é opcional
  });

  // Cálculo da área usando lado e altura
  double area() {
    if (altura != null) {
      return lado * altura!;
    } else {
      throw Exception("Altura não definida.");
    }
  }

  // Cálculo do perímetro
  double perimetro() {
    return 4 * lado;
  }
}
