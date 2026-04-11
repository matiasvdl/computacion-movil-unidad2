import 'package:flutter/material.dart';
import 'package:pantallas_unidad2/widgets/appbar_gobierno.dart';

/// Pantalla de inicio.
class ScreenInicio extends StatelessWidget {
  const ScreenInicio({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarGobierno(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: double.infinity,
              color: const Color(0xFF001C41),
              padding: const EdgeInsets.all(20),

              // Contenido principal de la pantalla de inicio (portada)
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Transformación Digital del Estado al servicio de las personas',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 28,
                          fontWeight: FontWeight.bold,
                          height: 1.2,
                      ),
                  ),
                  const SizedBox(height: 16),
                  const Text(
                    'La innovación, el uso estratégico de tecnologías y la colaboración, son nuestras herramientas para un Estado moderno y eficiente, que contribuya a una mejor calidad de vida de las personas.',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          height: 1.5,
                      ),
                  ),
                  const SizedBox(height: 24),

                  // Botón para ir a la hoja de ruta
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    color: Colors.blue,
                    child: Column(
                      children: [
                        Text(
                          'Ir a hoja de ruta',
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 16,
                                fontWeight: FontWeight.w600,
                          ),
                      ),
                      SizedBox(height: 4),
                       Container(
                          width: 120, 
                          height: 1.5, 
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ),
                const SizedBox(height: 20),
                Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: 36,
                        height: 36,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white),
                      ),
                      child: const Icon(
                        Icons.keyboard_arrow_down, 
                        color: Colors.white, 
                      ),
                    ),
                    const SizedBox(width: 10),
                    const Text(
                      'Quiero saber más',
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          decoration: TextDecoration.underline,
                      ),
                    ),
                  ],
                  ),
                ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}