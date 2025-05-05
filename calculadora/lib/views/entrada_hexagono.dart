import 'package:flutter/material.dart';
import '../controllers/hexagono_controller.dart';
import 'resultado_hexagono.dart';

class EntradaHexagonoPage extends StatelessWidget {
  EntradaHexagonoPage({super.key});

  final HexagonoController hexagonoController = HexagonoController();
  final TextEditingController ladoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Hexágono')),
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
                    hexagonoController.setLado(lado);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => ResultadoHexagono(hexagonoController),
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
                          content: const Text("Campo vazio!"),
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
