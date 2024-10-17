import 'package:flutter/material.dart';
import 'splashScreen.dart'; // Importez le splash screen

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'TP Flutter',
      theme: ThemeData(primarySwatch: Colors.blue),
      home: SplashScreen(), // Définir le SplashScreen comme écran de démarrage
    );
  }
}
