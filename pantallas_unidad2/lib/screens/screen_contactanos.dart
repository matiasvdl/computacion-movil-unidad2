import 'package:flutter/material.dart';
import 'package:pantallas_unidad2/widgets/appbar_gobierno.dart';

// Pantalla de contacto
class ScreenContactanos extends StatelessWidget {
  const ScreenContactanos({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarGobierno(),
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          padding: const EdgeInsets.all(14),
          child: const Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Contáctanos',
                style: TextStyle(
                  fontSize: 32,
                  fontWeight: FontWeight.w500,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 16),
              Text(
                '¿Necesitas más orientación para llevar la Transformación Digital a tu institución? ¿Tienes dudas sobre la implementación de alguna plataforma transversal?',
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Estamos para apoyarte.',
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 24),
              Text(
                'Ayuda a Instituciones',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 26),
              Text(
                'Mesa de Ayuda',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.5,
                    color: Colors.black87,
                  ),
                  children: [
                    TextSpan(text: 'Envía un '),
                    TextSpan(
                      text: 'ticket de atención.',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Horario de atención',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Lunes a Jueves : 08:30 a 17:30.\nViernes          : 08:30 a 16:30.',
                style: TextStyle(
                  fontSize: 15,
                  height: 1.6,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 48),
              Text(
                'Ubícanos',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Text(
                'Teatinos 92, piso 9, Santiago de Chile.',
                style: TextStyle(
                  fontSize: 15,
                  height: 1.5,
                  color: Colors.black87,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Contacto prensa',
                style: TextStyle(
                  fontSize: 17,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(height: 8),
              Text.rich(
                TextSpan(
                  style: TextStyle(
                    fontSize: 15,
                    height: 1.5,
                    color: Colors.black87,
                  ),
                  children: [
                    TextSpan(text: 'Para solicitudes de prensa, envíanos un '),
                    TextSpan(
                      text: 'correo electrónico.',
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}