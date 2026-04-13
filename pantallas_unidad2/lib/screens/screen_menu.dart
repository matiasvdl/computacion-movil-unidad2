import 'package:flutter/material.dart';

// Pantalla del menú principal.
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
            // Encabezado del menú.
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

            const SizedBox(height: 30),

            // Inicio
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

            // Prensa
            _MenuItemConIcono(
              titulo: 'Prensa',
              abierto: prensaAbierto,
              onTap: () {
                setState(() {
                  prensaAbierto = !prensaAbierto;
                });
              },
            ),

            // Submenú
            if (prensaAbierto) ...[
              Container(
                width: double.infinity,
                color: const Color(0xFF214A7D),
                child: InkWell(
                  onTap: () {
                    Navigator.pushNamed(context, 'noticias');
                  },
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  child: const Padding(
                    padding: EdgeInsets.fromLTRB(16, 16, 16, 14),
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

              const SizedBox(height: 25),
            ],

            // Contáctanos
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

// Item simple del menú.
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
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
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

// Item con ícono (Prensa).
class _MenuItemConIcono extends StatelessWidget {
  final String titulo;
  final VoidCallback onTap;
  final bool abierto;

  const _MenuItemConIcono({
    required this.titulo,
    required this.onTap,
    required this.abierto,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 26),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              titulo,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 18,
                decoration: TextDecoration.underline,
              ),
            ),
            Icon(
              abierto
                  ? Icons.keyboard_arrow_up
                  : Icons.keyboard_arrow_down,
              color: Colors.white,
            ),
          ],
        ),
      ),
    );
  }
}