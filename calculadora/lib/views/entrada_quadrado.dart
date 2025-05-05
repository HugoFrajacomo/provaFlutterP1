import 'package:flutter/material.dart';
import '../controllers/quadrado_controller.dart';
import 'resultado_quadrado.dart';

class EntradaQuadradoPage extends StatelessWidget {
  EntradaQuadradoPage({super.key});

  final QuadradoController quadradoController = QuadradoController();
  final TextEditingController ladoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Quadrado')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: ladoController,
              decoration: const InputDecoration(labelText: "Lado:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (ladoController.text.isNotEmpty) {
                  try {
                    double lado = double.parse(ladoController.text);
                    quadradoController.setLado(lado);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => ResultadoQuadrado(quadradoController),
                      ),
                    );
                  } catch (e) {
                    // Mostra um alerta se o valor não for numérico
                    showDialog(
                      context: context,
                      builder:
                          (context) => AlertDialog(
                            title: const Text("Erro"),
                            content: const Text(
                              "Por favor, insira um valor numérico válido.",
                            ),
                            actions: [
                              TextButton(
                                onPressed: () => Navigator.pop(context),
                                child: const Text("OK"),
                              ),
                            ],
                          ),
                    );
                  }
                } else {
                  // Mostra um alerta se o campo estiver vazio
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: const Text("Erro"),
                          content: const Text("O campo não pode estar vazio."),
                          actions: [
                            TextButton(
                              onPressed: () => Navigator.pop(context),
                              child: const Text("OK"),
                            ),
                          ],
                        ),
                  );
                }
              },
              child: const Text('Calcular'),
            ),
          ],
        ),
      ),
    );
  }
}
