import 'package:flutter/material.dart';
import 'package:prosonic/features/home/home_page.dart';
import 'package:prosonic/features/splash/splash_page.dart';

class AppRouter {
  static Route<dynamic> onGenerationRouter(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case SplashPage.path:
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case HomePage.path:
        return MaterialPageRoute(builder: (context) => const HomePage());
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold());
    }
  }
}
