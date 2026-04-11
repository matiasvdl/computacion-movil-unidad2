import 'package:flutter/material.dart';
import 'package:pantallas_unidad2/main.dart';

class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 1'),
      ),
      body: const Center(
        child: Text('Bienvenido a la Pantalla 1'),
      ),
    );
  }
}