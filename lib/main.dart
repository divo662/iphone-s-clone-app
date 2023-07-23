import 'package:flutter/material.dart';
import 'package:phone/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Phone',
      debugShowCheckedModeBanner: false,
      home: SplashScreen(),
    );
  }
}

