// ignore_for_file: prefer_const_constructors

import 'package:arbeit_app/screens/root_pages.dart';
import 'package:arbeit_app/screens/home_pages.dart';
import 'package:flutter/material.dart';
import 'dart:async';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      Duration(seconds: 2), 
      () => Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => RootPages()),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Center(
        child: Image.asset(
          'assets/Arbeit-Logos.png',
          scale: 4,
        ),
      ),
    );
  }
}
