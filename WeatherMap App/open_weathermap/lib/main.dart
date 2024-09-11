import 'package:flutter/material.dart';
import 'package:open_weathermap/controller/weather_controller.dart';
import 'package:open_weathermap/View/Home_Screen/home_screen.dart';
import 'package:open_weathermap/View/Splash_Screen/splash_screen.dart';
import 'package:open_weathermap/View/Wheather_Screen/weather_detail_screen.dart';
import 'package:provider/provider.dart';

void main() {
  //entry point of application
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => WeatherController(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: const SplashScreen(),
        routes: {
          'homeScreen': (context) => const HomeScreen(),
          'weatherScreen': (context) => const WeatherDetailScrenn()
        },
      ),
    );
  }
}
