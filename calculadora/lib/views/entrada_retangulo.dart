import 'package:flutter/material.dart';
import '../controllers/retangulo_controller.dart';
import 'resultado_retangulo.dart';

class EntradaRetanguloPage extends StatelessWidget {
  EntradaRetanguloPage({super.key});

  final RetanguloController retcontroller = RetanguloController();

  final TextEditingController alturaController = TextEditingController();
  final TextEditingController baseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Retângulo')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: alturaController,
              decoration: const InputDecoration(labelText: "Altura:"),
              keyboardType: TextInputType.number,
            ),
            TextField(
              controller: baseController,
              decoration: const InputDecoration(labelText: "Base:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                double altura = double.parse(alturaController.text);
                double base = double.parse(baseController.text);
                retcontroller.setDimensao(altura, base);
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => ResultadoRetangulo(retcontroller),
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
