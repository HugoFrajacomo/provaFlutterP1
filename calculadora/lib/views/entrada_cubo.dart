import 'package:flutter/material.dart';
import '../controllers/cubo_controller.dart';
import 'resultado_cubo.dart';

class EntradaCuboPage extends StatelessWidget {
  EntradaCuboPage({super.key});

  final CuboController cuboController = CuboController();
  final TextEditingController ladoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Cubo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: ladoController,
              decoration: const InputDecoration(labelText: "Lado do Cubo:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double lado = double.parse(ladoController.text);
                cuboController.setLado(lado);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultadoCubo(cuboController),
                  ),
                );
              },
              child: const Text("Calcular"),
            ),
          ],
        ),
      ),
    );
  }
}
