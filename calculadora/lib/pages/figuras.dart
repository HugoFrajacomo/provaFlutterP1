import 'package:flutter/material.dart';

class FiguraPage extends StatelessWidget {
  final String nomeFigura;

  const FiguraPage({super.key, required this.nomeFigura});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(nomeFigura), backgroundColor: Colors.blue),
      body: Center(
        child: Text(
          'Página de $nomeFigura',
          style: const TextStyle(fontSize: 24),
        ),
      ),
    );
  }
}
