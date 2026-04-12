import 'package:flutter/material.dart';
import 'package:pantallas_unidad2/screens/screens.dart';
import 'package:pantallas_unidad2/screens/screen_noticias.dart';

class AppRoutes {
  static const String initialRoute = 'inicio';

  // Mapa que contiene todas las rutas disponibles de la aplicación.
  static Map<String, Widget Function(BuildContext)> routes = {
    'inicio': (BuildContext context) => const ScreenInicio(),
    'contactanos': (BuildContext context) => const ScreenContactanos(),
    'menu': (BuildContext context) => const ScreenMenu(),
    'nosotros': (BuildContext context) => const ScreenNosotros(),
    'noticias': (context) => const ScreenNoticias(),
  };

  // Maneja rutas no definidas, redirigiendo a la pantalla de inicio.
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    return MaterialPageRoute(
      builder: (context) => const ScreenInicio(),
    );
  }
}