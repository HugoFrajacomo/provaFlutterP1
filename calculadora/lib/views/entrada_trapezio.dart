import 'package:flutter/material.dart';
import '../controllers/trapezio_controller.dart';
import 'resultado_trapezio.dart';

class EntradaTrapezioPage extends StatelessWidget {
  EntradaTrapezioPage({super.key});

  final TrapezioController trapezioController = TrapezioController();
  final TextEditingController baseMaiorController = TextEditingController();
  final TextEditingController baseMenorController = TextEditingController();
  final TextEditingController alturaController = TextEditingController();
  final TextEditingController lado1Controller = TextEditingController();
  final TextEditingController lado2Controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Trapézio')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: baseMaiorController,
              decoration: const InputDecoration(labelText: "Base maior:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: baseMenorController,
              decoration: const InputDecoration(labelText: "Base menor:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: alturaController,
              decoration: const InputDecoration(labelText: "Altura:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: lado1Controller,
              decoration: const InputDecoration(labelText: "Lado 1:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            TextField(
              controller: lado2Controller,
              decoration: const InputDecoration(labelText: "Lado 2:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (baseMaiorController.text.isNotEmpty &&
                    baseMenorController.text.isNotEmpty &&
                    alturaController.text.isNotEmpty &&
                    lado1Controller.text.isNotEmpty &&
                    lado2Controller.text.isNotEmpty) {
                  try {
                    double baseMaior = double.parse(baseMaiorController.text);
                    double baseMenor = double.parse(baseMenorController.text);
                    double altura = double.parse(alturaController.text);
                    double lado1 = double.parse(lado1Controller.text);
                    double lado2 = double.parse(lado2Controller.text);

                    trapezioController.setDimensoes(
                      baseMaior,
                      baseMenor,
                      altura,
                      lado1,
                      lado2,
                    );

                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder:
                            (context) => ResultadoTrapezio(trapezioController),
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
                  // Mostra um alerta se algum campo estiver vazio
                  showDialog(
                    context: context,
                    builder:
                        (context) => AlertDialog(
                          title: const Text("Erro"),
                          content: const Text(
                            "Por favor, preencha todos os campos.",
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
              child: const Text('Calcular'),
            ),
          ],
        ),
      ),
    );
  }
}
