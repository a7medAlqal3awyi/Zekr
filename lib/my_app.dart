import 'package:azkar/core/routing/app_router.dart';
import 'package:flutter/material.dart';

import 'core/routing/routes.dart';

class MyApp extends StatelessWidget {
  final AppRouter appRouter ;
  const MyApp({super.key, required this.appRouter});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      initialRoute: Routes.splash,
      debugShowCheckedModeBanner: false,
      onGenerateRoute: appRouter.onGenerateRoute,
    );
  }
}

