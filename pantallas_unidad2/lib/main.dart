import 'package:flutter/material.dart';
import 'package:pantallas_unidad2/routes/app_routes.dart';

void main() {
  runApp(const GobiernoDigital());
}

class GobiernoDigital extends StatelessWidget {
  const GobiernoDigital({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Gobierno Digital de Chile',

      // Color AppBar
      theme: ThemeData(
        appBarTheme: const AppBarTheme(
          backgroundColor: Color(0xFF001C41),
        ),
      ),

      scrollBehavior: const MaterialScrollBehavior().copyWith(
        overscroll: false, // Esto lo ponemos para elimina el efecto de rebote al hacer scroll
      ),

      initialRoute: AppRoutes.initialRoute,
      routes: AppRoutes.routes,
      onGenerateRoute: AppRoutes.onGenerateRoute,
    );
  }
}