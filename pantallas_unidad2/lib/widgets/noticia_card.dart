import 'package:flutter/material.dart';

// Widget reutilizable para mostrar una noticia.
class NoticiaCard extends StatelessWidget {
  final String imagen;
  final String titulo;
  final String fecha;
  final String resumen;
  final String textoBoton;
  final VoidCallback onTap;

  const NoticiaCard({
    super.key,
    required this.imagen,
    required this.titulo,
    required this.fecha,
    required this.resumen,
    required this.textoBoton,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(20, 30, 20, 10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: double.infinity,
            child: Image.asset(
              imagen,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            titulo,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
              height: 1.4,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            fecha,
            style: const TextStyle(
              fontSize: 14,
              color: Colors.black54,
            ),
          ),
          const SizedBox(height: 20),
          Text(
            resumen,
            style: const TextStyle(
              fontSize: 15,
              height: 1.5,
            ),
          ),
          const SizedBox(height: 20),
          InkWell(
            onTap: onTap,
            child: Text(
              textoBoton,
              style: const TextStyle(
                color: Color(0xFF2B5CAA),
                decoration: TextDecoration.underline,
                fontSize: 15,
              ),
            ),
          ),
        ],
      ),
    );
  }
}