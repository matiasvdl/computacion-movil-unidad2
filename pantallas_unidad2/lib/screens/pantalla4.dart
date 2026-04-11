import 'package:flutter/material.dart';

class Pantalla1 extends StatelessWidget {
  const Pantalla1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Pantalla 4'),
      ),
      body: const Center(
        child: Text('Bienvenido a la Pantalla 4'),
      ),
    );
  }
}