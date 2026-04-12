import 'package:flutter/material.dart';
import 'package:pantallas_unidad2/widgets/appbar_gobierno.dart';

/// Pantalla de noticias.
class ScreenNoticias extends StatelessWidget {
  const ScreenNoticias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarGobierno(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Bloque azul
            Container(
              width: double.infinity,
              color: const Color(0xFF001C41),
              padding: const EdgeInsets.all(20),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Noticias',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 32,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Selección de las noticias de digitalización donde se destaca la presencia de autoridades de gobierno.',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      height: 1.5,
                    ),
                  ),
                ],
              ),
            ),

            // Primera noticia
            Padding(
              padding: const EdgeInsets.fromLTRB(20, 30, 20, 40),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/noticia1.png',
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'Chile sube 22 puestos y queda décimo en el ranking de Gobierno Digital de la OCDE',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      height: 1.4,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    '16 de Febrero de 2026',
                    style: TextStyle(
                      color: Colors.black54,
                    ),
                  ),

                  const SizedBox(height: 20),

                  const Text(
                    'El país experimentó un ascenso notable en el Índice de Gobierno Digital de la OCDE, pasando del puesto 32 al 10 en la última medición efectuada el año 2025. Este...',
                    style: TextStyle(
                      height: 1.5,
                    ),
                  ),

                  const SizedBox(height: 20),

                  InkWell(
                    onTap: () {},
                    child: const Text(
                      '→ Leer Historia',
                      style: TextStyle(
                        color: Color(0xFF2B5CAA),
                        decoration: TextDecoration.underline,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
} 
