import 'package:azkar/core/routing/routes.dart';
import 'package:azkar/feature/details/deatails_screen.dart';
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
      case Routes.details:
        return MaterialPageRoute(
          builder: (context) => DetailsScreen(
            endPoint: settings.arguments as String,
          ),
        );
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
