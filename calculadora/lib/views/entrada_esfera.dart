import 'package:flutter/material.dart';
import '../controllers/esfera_controller.dart';
import 'resultado_esfera.dart';

class EntradaEsferaPage extends StatelessWidget {
  EntradaEsferaPage({super.key});

  final EsferaController esferaController = EsferaController();
  final TextEditingController raioController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Entrada de Dados: Esfera')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: <Widget>[
            TextField(
              controller: raioController,
              decoration: const InputDecoration(labelText: "Raio:"),
              keyboardType: TextInputType.number,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (raioController.text.isNotEmpty) {
                  try {
                    double raio = double.parse(raioController.text);
                    esferaController.setRaio(raio);
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ResultadoEsfera(esferaController),
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
