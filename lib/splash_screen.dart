import 'dart:async';

import 'package:flutter/material.dart';


import 'main_page.dart';
import 'recents.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    Timer(const Duration(seconds: 1), () {
      Navigator.pushReplacement(
          context, MaterialPageRoute
        (builder: (context) => const MainPage()));
    });

    return const Scaffold(
      backgroundColor: Colors.black,

    );
  }
}
