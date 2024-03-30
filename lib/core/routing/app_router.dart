import 'package:azkar/core/routing/routes.dart';
import 'package:azkar/feature/home/home_screen.dart';
import 'package:azkar/feature/splash/splash_screen.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.splash:
        return MaterialPageRoute(builder: (context) => const SplashScreen());
      case Routes.home:
        return MaterialPageRoute(builder: (context) => const HomeScreen());
      case Routes.login:
        return MaterialPageRoute(builder: (context) => const Scaffold());
      case Routes.register:
        return MaterialPageRoute(builder: (context) => const Scaffold());
      default:
        return MaterialPageRoute(
          builder: (context) => const Scaffold(
            body: Center(
              child: Text('No route defined'),
            ),
          ),
        );
    }
  }
}
