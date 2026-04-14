import 'package:flutter/material.dart';
import 'package:pantallas_unidad2/widgets/appbar_gobierno.dart';
import 'package:pantallas_unidad2/widgets/footer_gobierno.dart';
import 'package:pantallas_unidad2/widgets/noticia_card.dart';

// Pantalla de noticias.
class ScreenNoticias extends StatelessWidget {
  const ScreenNoticias({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarGobierno(),
      body: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                minHeight: constraints.maxHeight,
              ),
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

                  NoticiaCard(
                    imagen: 'assets/noticia1.png',
                    titulo: 'Chile sube 22 puestos y queda décimo en el ranking de Gobierno Digital de la OCDE',
                    fecha: '16 de Febrero de 2026',
                    resumen: 'El país experimentó un ascenso notable en el Índice de Gobierno Digital de la OCDE, pasando del puesto 32 al 10 en la última medición efectuada el año 2025. Este...',
                    textoBoton: '→ Leer Historia',
                    onTap: () {},
                  ),

                  // Footer
                  const FooterGobierno(),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}