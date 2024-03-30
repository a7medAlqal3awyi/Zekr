import 'package:azkar/core/helper/exetention.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../core/routing/routes.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen>
    with TickerProviderStateMixin {
  AnimationController? _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: (6)),
      vsync: this,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Lottie.asset(
            "assets/animation/quran_Animation.json",
            width: 500,
            controller: _controller,
            height: MediaQuery.of(context).size.height * 1,
            animate: true,
            onLoaded: (composition) {
              _controller!
                ..duration = composition.duration
                ..forward().whenComplete(
                    () => context.pushReplacementNamed(Routes.home));
            },
          ),
        ],
      ),
    );
  }
}
