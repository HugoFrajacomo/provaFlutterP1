import 'package:flutter/material.dart';
import '../controllers/trapezio_controller.dart';

class ResultadoTrapezio extends StatelessWidget {
  final TrapezioController trapezioController;
  const ResultadoTrapezio(this.trapezioController, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Resultados do Trapézio'),
        centerTitle: true,
        backgroundColor: Colors.blueAccent,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Card(
          elevation: 6,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(
              vertical: 30.0,
              horizontal: 20.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Icon(Icons.check_circle_outline, color: Colors.green, size: 60),
                const SizedBox(height: 20),
                Text(
                  'Detalhes do Trapézio',
                  style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
                ),
                const SizedBox(height: 20),
                _buildResultRow(
                  "Base maior",
                  "${trapezioController.baseMaior}",
                ),
                Divider(),
                _buildResultRow(
                  "Base menor",
                  "${trapezioController.baseMenor}",
                ),
                Divider(),
                _buildResultRow("Altura", "${trapezioController.altura}"),
                Divider(),
                _buildResultRow("Área", "${trapezioController.getArea()}"),
                Divider(),
                _buildResultRow(
                  "Perímetro",
                  "${trapezioController.getPerimetro()}",
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildResultRow(String label, String value) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(label, style: TextStyle(fontSize: 18)),
          Text(value, style: TextStyle(fontSize: 18)),
        ],
      ),
    );
  }
}
