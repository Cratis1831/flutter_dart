import 'package:flutter/material.dart';
import 'package:flutter_dart/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Color(0xFF09090b)),
        primaryColor: Color(0xFF09090b),
        primaryColorLight: Colors.white,
        useMaterial3: true,
      ),
      home: const HomePage(),
    );
  }
}
