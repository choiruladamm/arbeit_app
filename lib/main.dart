// ignore_for_file: prefer_const_constructors

import 'package:arbeit_app/screens/home_pages.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Axiforma'
      ),
      home: HomePages(),
    );
  }
}
