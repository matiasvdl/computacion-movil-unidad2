import 'package:flutter/material.dart';
import 'package:pantallas_unidad2/widgets/appbar_gobierno.dart';
import 'package:pantallas_unidad2/widgets/footer_gobierno.dart';

// Pantalla de inicio.
class ScreenInicio extends StatelessWidget {
  const ScreenInicio({super.key});

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
                  // Encabezado principal
                  Container(
                    width: double.infinity,
                    color: const Color(0xFF001C41),
                    padding: const EdgeInsets.all(20),

                    // Contenido principal de la pantalla de inicio.
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

                        // Botón visual para ir a la hoja de ruta.
                        Container(
                          width: double.infinity,
                          padding: const EdgeInsets.symmetric(vertical: 14),
                          color: Colors.blue,
                          child: const Column(
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
                              SizedBox(
                                width: 120,
                                child: Divider(
                                  color: Colors.white,
                                  thickness: 1.5,
                                  height: 1.5,
                                ),
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
                  ),

                  // Sección Nosotros
                  Container(
                    width: double.infinity,
                    color: const Color(0xFFF2F2F2),
                    padding: const EdgeInsets.fromLTRB(20, 40, 20, 40),
                    child: const Column(
                      children: [
                        Text(
                          'NOSOTROS',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 14),
                        Text(
                          'Líneas de Acción',
                          style: TextStyle(
                            fontSize: 30,
                            height: 1.3,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 30),
                        Text(
                          'Políticas y Normativas',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF0A4C9A),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Establecemos las normativas y políticas transversales relativas a la Transformación Digital del Estado.',
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.6,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 40),
                        Text(
                          'Tecnologías',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF0A4C9A),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Desarrollamos y operamos plataformas transversales habilitantes para las instituciones públicas.',
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.6,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 40),
                        Text(
                          'Adopción Digital',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color(0xFF0A4C9A),
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Orientamos a las instituciones en la implementación de las políticas asociadas a la Transformación Digital.',
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.6,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),

                  // Sección Plataformas
                  Container(
                    width: double.infinity,
                    color: const Color(0xFFF2F2F2),
                    padding: const EdgeInsets.fromLTRB(20, 20, 20, 50),
                    child: const Column(
                      children: [
                        Text(
                          'PLATAFORMAS TRANSVERSALES',
                          style: TextStyle(
                            fontSize: 17,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 14),
                        Text(
                          'Herramientas de\nTransformación Digital',
                          style: TextStyle(
                            fontSize: 30,
                            height: 1.3,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 22),
                        Text(
                          'Plataformas al servicio de tu institución para facilitar sus procesos de Transformación Digital.',
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.6,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        SizedBox(height: 28),
                        Text(
                          '→ IR A PRODUCTOS',
                          style: TextStyle(
                            fontSize: 16,
                            color: Color(0xFF0D63C9),
                            fontWeight: FontWeight.bold,
                            decoration: TextDecoration.underline,
                          ),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                  ),

                  // Sección Noticias
                  Container(
                    width: double.infinity,
                    color: const Color(0xFFF2F2F2),
                    padding: const EdgeInsets.fromLTRB(20, 30, 20, 30),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Center(
                          child: Text(
                            'Noticias',
                            style: TextStyle(
                              fontSize: 30,
                              fontWeight: FontWeight.bold,
                            ),
                            textAlign: TextAlign.center,
                          ),
                        ),
                        const SizedBox(height: 30),

                        SizedBox(
                          width: double.infinity,
                          child: Image.asset(
                            'assets/noticia1.png',
                            fit: BoxFit.cover,
                          ),
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
                            fontSize: 14,
                            color: Colors.black54,
                          ),
                        ),

                        const SizedBox(height: 20),

                        const Text(
                          'El país experimentó un ascenso notable en el Índice de Gobierno Digital de la OCDE, pasando del puesto 32 al 10 en la última medición efectuada el año 2025. Este avance lo...',
                          style: TextStyle(
                            fontSize: 15,
                            height: 1.5,
                          ),
                        ),

                        const SizedBox(height: 20),

                        InkWell(
                          onTap: () {},
                          child: const Text(
                            '→ Ver Más',
                            style: TextStyle(
                              color: Color(0xFF2B5CAA),
                              decoration: TextDecoration.underline,
                              fontSize: 15,
                            ),
                          ),
                        ),
                      ],
                    ),
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