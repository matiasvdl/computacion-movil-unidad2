import 'package:flutter/material.dart';

// Pantalla del menú lateral
class ScreenMenu extends StatelessWidget {
  const ScreenMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF001C41),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Encabezado del menú
              Row(
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
              const SizedBox(height: 30),

              // Opciones del menú
              _MenuItem(
                titulo: 'Nosotros',
                onTap: () {},
              ),
              _MenuItemConIcono(
                titulo: 'Prensa',
                onTap: () {},
              ),
              _MenuItemConIcono(
                titulo: 'Transformación Digital',
                onTap: () {},
              ),
              _MenuItemConIcono(
                titulo: 'Servicios y plataformas',
                onTap: () {},
              ),
              _MenuItemConIcono(
                titulo: 'Biblioteca',
                onTap: () {},
              ),
              _MenuItem(
                titulo: 'Contáctanos',
                onTap: () {
                  Navigator.pushNamed(context, 'contactanos');
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// Opción de menú simple sin ícono, para opciones que no tienen submenú o más opciones.
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
      padding: const EdgeInsets.only(bottom: 26),
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

// Opción de menú con ícono de flecha a la derecha, indicando que tiene submenú o más opciones.
class _MenuItemConIcono extends StatelessWidget {
  final String titulo;
  final VoidCallback onTap;

  const _MenuItemConIcono({
    required this.titulo,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 26),
      child: InkWell(
        onTap: onTap,
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
            const Icon(
              Icons.keyboard_arrow_down,
              color: Colors.white,
              size: 24,
            ),
          ],
        ),
      ),
    );
  }
}