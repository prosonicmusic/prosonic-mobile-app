import 'package:flutter/material.dart';
import 'package:prosonic/features/authentication/auth_page.dart';
import 'package:prosonic/features/base/base_page.dart';
import 'package:prosonic/features/home/home_page.dart';
import 'package:prosonic/features/splash/splash_page.dart';

class AppRouter {
  static Route<dynamic> onGenerationRouter(RouteSettings routeSettings) {
    switch (routeSettings.name) {
      case SplashPage.path:
        return MaterialPageRoute(builder: (context) => const SplashPage());
      case HomePage.path:
        return MaterialPageRoute(builder: (context) => const HomePage());
      case AuthenticationPage.path:
        return MaterialPageRoute(
            builder: (context) => const AuthenticationPage());
      case BasePage.path:
        return MaterialPageRoute(builder: (context) => const BasePage());
      default:
        return MaterialPageRoute(builder: (context) => const Scaffold());
    }
  }
}
