import 'package:flutter/material.dart';
import 'package:pantallas_unidad2/screens/screens.dart';

class AppRoutes {
static const String initialRoute = 'inicio';

  // Definición de rutas
  static Map<String, Widget Function(BuildContext)> routes = {
    'inicio': (BuildContext context) => const ScreenInicio(),
  };

  // Ruta por defecto para rutas no definidas
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ScreenInicio(),
    );
  }
}