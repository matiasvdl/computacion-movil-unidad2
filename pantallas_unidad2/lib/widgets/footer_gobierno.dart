import 'package:flutter/material.dart';

// Widget reutilizable para el pie de página.
class FooterGobierno extends StatelessWidget {
  const FooterGobierno({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: const Color(0xFF001C41),
      padding: const EdgeInsets.all(20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Logo
          Image.asset(
            'assets/logo.png',
            height: 40,
          ),

          const SizedBox(height: 12),

          const Text(
            'Perteneciente al Ministerio de Hacienda',
            style: TextStyle(color: Colors.white),
          ),

          const SizedBox(height: 30),

          // SECCIONES
          const Text(
            'SECCIONES',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          _link(
            'Nosotros',
            onTap: () {
              Navigator.pushNamed(context, 'nosotros');
            },
          ),
          _link(
            'Noticias',
            onTap: () {
              Navigator.pushNamed(context, 'noticias');
            },
          ),
          _link(
            'Contáctanos',
            onTap: () {
              Navigator.pushNamed(context, 'contactanos');
            },
          ),

          const SizedBox(height: 30),

          // Mesa de servicios
          const Text(
            'Mesa de Servicios',
            style: TextStyle(
              color: Colors.white,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 10),

          const Text(
            'Horario de atención:\n'
            'Lunes a Jueves : 08:30 - 17:30\n'
            'Viernes        : 08:30 - 16:30',
            style: TextStyle(color: Colors.white),
          ),

          const SizedBox(height: 20),
        ],
      ),
    );
  }

  // Widget reutilizable para links del footer.
  static Widget _link(String texto, {required VoidCallback onTap}) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 6),
      child: InkWell(
        onTap: onTap,
        splashColor: Colors.transparent,
        highlightColor: Colors.transparent,
        child: Text(
          texto,
          style: const TextStyle(
            color: Colors.white,
            decoration: TextDecoration.underline,
          ),
        ),
      ),
    );
  }
}