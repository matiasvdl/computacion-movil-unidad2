import 'package:flutter/material.dart';

// Pantalla del menú lateral
class ScreenMenu extends StatefulWidget {
  const ScreenMenu({super.key});

  @override
  State<ScreenMenu> createState() => _ScreenMenuState();
}

class _ScreenMenuState extends State<ScreenMenu> {
  bool prensaAbierto = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001C41),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Encabezado del menú
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 12, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    'assets/logo.png',
                    height: 40,
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: const Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        Text(
                          'Cerrar',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        SizedBox(width: 8),
                        Icon(
                          Icons.close,
                          color: Colors.white,
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 36),

            // Iinicio del menú 
            _MenuItem(
              titulo: 'Inicio',
              onTap: () {
                Navigator.pushNamed(context, 'inicio');
              },
            ),

            // Nosotros
            _MenuItem(
              titulo: 'Nosotros',
              onTap: () {
                Navigator.pushNamed(context, 'nosotros');
              },
            ),

            // Prensa con despliegue Noticias
            Container(
              width: double.infinity,
              color: prensaAbierto
                  ? const Color(0xFF2C5A92)
                  : Colors.transparent,
              child: Theme(
                data: Theme.of(context).copyWith(
                  dividerColor: Colors.transparent,
                ),
                child: ExpansionTile(
                  tilePadding: const EdgeInsets.symmetric(horizontal: 16),
                  childrenPadding: EdgeInsets.zero,
                  iconColor: Colors.white,
                  collapsedIconColor: Colors.white,
                  onExpansionChanged: (value) {
                    setState(() {
                      prensaAbierto = value;
                    });
                  },
                  title: const Text(
                    'Prensa',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                    ),
                  ),
                  children: [
                    Container(
                      width: double.infinity,
                      color: const Color(0xFF214A7D),
                      child: InkWell(
                        onTap: () {
                          Navigator.pushNamed(context, 'noticias');
                        },
                        child: const Padding(
                          padding: EdgeInsets.fromLTRB(16, 18, 16, 18),
                          child: Text(
                            'Noticias',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 17,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 26),

            // Contacto
            _MenuItem(
              titulo: 'Contáctanos',
              onTap: () {
                Navigator.pushNamed(context, 'contactanos');
              },
            ),
          ],
        ),
      ),
    );
  }
}

// Opción de menú simple
class _MenuItem extends StatelessWidget {
  final String titulo;
  final VoidCallback onTap;

  const _MenuItem({
    required this.titulo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 26),
      child: InkWell(
        onTap: onTap,
        child: Text(
          titulo,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 18,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}