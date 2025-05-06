import 'package:flutter/material.dart';
import '../controllers/losango_controller.dart';
import 'resultado_losango.dart';

class EntradaLosango extends StatelessWidget {
  EntradaLosango({super.key});

  final LosangoController losangoController = LosangoController();
  final TextEditingController ladoController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Losango')),
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
            TextField(
              controller: alturaController,
              decoration: const InputDecoration(labelText: "Altura:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (ladoController.text.isNotEmpty) {
                  try {
                    double lado = double.parse(ladoController.text);
                    double? altura =
                        alturaController.text.isNotEmpty
                            ? double.parse(alturaController.text)
                            : null;
                    losangoController.setDimensoes(lado, altura);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => ResultadoLosango(losangoController),
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
                              "Por favor, insira valores numéricos válidos.",
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
                  // Mostra um alerta se o campo "lado" estiver vazio
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: const Text("Erro"),
                          content: const Text(
                            "Por favor, preencha o campo do lado.",
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
              },
              child: const Text("Calcular"),
            ),
          ],
        ),
      ),
    );
  }
}
