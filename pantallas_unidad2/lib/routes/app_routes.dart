import 'package:flutter/material.dart';
import 'package:pantallas_unidad2/screens/screen.dart';

class AppRoutes {

  static const String initialRoute = '/inicio';

  static Map<String, Widget Function(BuildContext)> routes = {
    '/inicio': (context) => const ScreenInicio(),
  };
}