import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'login_page.dart'; // Assurez-vous que vous avez bien l'écran de connexion

class SplashScreen extends StatefulWidget {
  @override
  SplashScreenState createState() => SplashScreenState();
}

class SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    // Redirige vers l'écran de connexion après 3 secondes
    Future.delayed(Duration(seconds: 4), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => LoginPage()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Lottie.asset(
          'assets/AnimationLaunch.json', // Chemin vers l'animation
          width: 400, // Ajustez selon vos besoins
          height: 400,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
