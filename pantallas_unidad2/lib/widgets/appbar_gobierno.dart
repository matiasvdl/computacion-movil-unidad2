import 'package:flutter/material.dart';

// AppBar personalizado para el Gobierno Digital de Chile, con logo institucional y botón de menú.
class AppBarGobierno extends StatelessWidget implements PreferredSizeWidget {
  const AppBarGobierno({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Logo institucional alineado a la izquierda.
            Image.asset(
              'assets/logo.png',
              height: 40,
            ),

            // Botón de menú alineado a la derecha.
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, 'menu');
              },
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Menú',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(width: 8),
                  Icon(
                    Icons.menu,
                    color: Colors.white,
                    size: 28,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}