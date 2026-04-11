import 'package:flutter/material.dart';

/// Widget reutilizable para el AppBar del Gobierno Digital de Chile
class AppBarGobierno extends StatelessWidget implements PreferredSizeWidget {
  const AppBarGobierno({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      titleSpacing: 0,
      title: Padding(
        padding: const EdgeInsets.only(left: 16),
        child: Align(
          alignment: Alignment.centerLeft,
          child: Image.asset(
            'assets/logo.png',
            height: 40,
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}