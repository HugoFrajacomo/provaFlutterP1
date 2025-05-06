import 'dart:async';
import 'package:flutter/material.dart';
import 'login.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  @override
  _SplashPageState createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // Imagens dos logos
            Image.asset('lib/assets/imagens/cps-55-anos.png', width: 200),
            const SizedBox(height: 10),
            Image.asset('lib/assets/imagens/cst-dsm.png', width: 200),
            const SizedBox(height: 10),
            Image.asset('lib/assets/imagens/fatec-matao.jpg', width: 200),
            const SizedBox(height: 20),

            // Título
            const Text(
              'Sistema',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const Text(
              'Figuras Geométricas',
              style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 20),

            // Loading
            const Text("Loading..."),
            const SizedBox(height: 10),
            const CircularProgressIndicator(color: Colors.blue),
            const SizedBox(height: 30),

            // Alunos e versão
            const Text('Hugo Frajacomo'),
            const Text('Lucas Malachias'),
            const Text('Gabriel Pelicolla'),
            // const Text('adicioanr mais alunos aqui'),
            const SizedBox(height: 10),
            const Text('Versão 1.0'),
          ],
        ),
      ),
    );
  }
}
