import 'package:flutter/material.dart';
import 'package:quiz/views/home_screen.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});
  @override
  State createState() => _SplashScreenState();
}

class _SplashScreenState extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        clipBehavior: Clip.none,
        children: [
          Image.asset('./assets/images/splash.png'),
          Positioned(
            top: 390,
            left: 80,
            child: GestureDetector(
              onTap: () {
                Navigator.of(context).pushReplacement(
                  MaterialPageRoute(
                    builder: (_) => const HomeScreen(),
                  ),
                );
              },
              child: Image.asset(
                './assets/images/Logo.png',
              ),
            ),
          ),
        ],
      ),
    );
  }
}
