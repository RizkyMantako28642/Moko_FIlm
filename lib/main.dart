import 'package:flutter/material.dart';
import 'package:moko_film/pages/home.dart';
import 'package:moko_film/pages/splash.dart';
import 'package:moko_film/pages/welcome.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/': (context) => const HomeSplash(),
        '/welcome': (context) => const WelcomePage(),
        '/home': (context) => const HomePage()
      },
    );
  }
}
