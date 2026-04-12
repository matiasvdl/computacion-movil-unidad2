import 'package:flutter/material.dart';
import 'package:pantallas_unidad2/widgets/appbar_gobierno.dart';

/// Pantalla de nosotros.
class ScreenNosotros extends StatelessWidget {
  const ScreenNosotros({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const AppBarGobierno(),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Sección principal con fondo blanco.
            Container(
              width: double.infinity,
              color: Colors.white,
              padding: const EdgeInsets.all(14),
              child: const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Nosotros',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.w500,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'El mandato de Gobierno Digital es coordinar y asesorar intersectorialmente a los órganos de la Administración del Estado en el uso estratégico de las tecnologías digitales, apoyando su uso, datos e información pública para mejorar la gestión y la entrega de servicios cercanos y de calidad a las personas.',
                    style: TextStyle(
                      fontSize: 17,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 52),
                  Text(
                    'Qué hacemos',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 20),
                  Text(
                    'Trabajamos en tres líneas de acción:',
                    style: TextStyle(
                      fontSize: 18,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 10),
                  Padding(
                    padding: EdgeInsets.only(left: 18),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '• Establecer las políticas y normativas transversales asociadas a la Transformación Digital.',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          '• Desarrollar y operar plataformas transversales habilitantes para las instituciones públicas.',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            color: Colors.black87,
                          ),
                        ),
                        SizedBox(height: 6),
                        Text(
                          '• Coordinar y orientar a las instituciones en la implementación de las políticas asociadas a la Transformación Digital.',
                          style: TextStyle(
                            fontSize: 16,
                            height: 1.5,
                            color: Colors.black87,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Misión',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 18),
                  Text(
                    'Proponer la Estrategia de Gobierno Digital y coordinar su implementación; asesorar en el uso estratégico de tecnologías digitales, datos e información pública; y desarrollar y operar plataformas y servicios compartidos, entre otros de interoperabilidad e identidad digital. Todo esto con el fin de agregar Valor Público en el ámbito de la eficacia, confiabilidad y eficiencia del Estado, la calidad de vida de las personas, y mejores servicios a las empresas.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 24),
                  Text(
                    'Visión',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 18),
                  Text(
                    'El Estado chileno se compromete a mejorar la calidad de sus servicios y políticas públicas para aumentar la satisfacción y confianza de las personas y empresas. Para lograrlo, implementará una gestión sustentada en sistemas digitales de información integrados, eficientes y centrados en el usuario. La meta es que, para el año 2030, el sector público chileno supere el promedio de los países de la OCDE en transformación digital.',
                    style: TextStyle(
                      fontSize: 16,
                      height: 1.5,
                      color: Colors.black87,
                    ),
                  ),
                  SizedBox(height: 52),
                ],
              ),
            ),

            // Sección Gobernanza con fondo gris.
            Container(
              width: double.infinity,
              color: const Color(0xFFEDEDED),
              padding: const EdgeInsets.all(14),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Gobernanza',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 50),
                  Container(
                    width: double.infinity,
                    color: Colors.white,
                    padding: const EdgeInsets.all(10),
                    child: Image.asset(
                      'assets/gobernanza.png',
                      fit: BoxFit.contain,
                    ),
                  ),
                  const SizedBox(height: 40),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}