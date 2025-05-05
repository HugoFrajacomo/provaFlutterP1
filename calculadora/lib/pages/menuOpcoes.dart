import 'package:flutter/material.dart';
import '../views/entrada_retangulo.dart';
import '../views/entrada_circulo.dart';
import '../views/entrada_cubo.dart';
import '../views/entrada_esfera.dart';
import '../views/entrada_hexagono.dart';
import '../views/entrada_losango.dart';
import '../views/entrada_paralelogramo.dart';
import '../views/entrada_quadrado.dart';
import '../views/entrada_trapezio.dart';
import '../views/entrada_triangulo.dart';

class MenuOpcoes extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Escolha a Opção para calcular')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EntradaCirculoPage()),
                );
              },
              child: Text('Círculo'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EntradaCuboPage()),
                );
              },
              child: Text('Cubo'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EntradaEsferaPage()),
                );
              },
              child: Text('Esfera'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EntradaHexagonoPage(),
                  ),
                );
              },
              child: Text('Hexagono'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => EntradaLosango()),
                );
              },
              child: Text('Losango'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EntradaParalelogramoPage(),
                  ),
                );
              },
              child: Text('Paralelogramo'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EntradaQuadradoPage(),
                  ),
                );
              },
              child: Text('Quadrado'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EntradaRetanguloPage(),
                  ),
                );
              },
              child: Text('Retângulo'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EntradaTrapezioPage(),
                  ),
                );
              },
              child: Text('Trapezio'),
            ),
            SizedBox(height: 16),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => EntradaTrianguloPage(),
                  ),
                );
              },
              child: Text('Triangulo'),
            ),
          ],
        ),
      ),
    );
  }
}
