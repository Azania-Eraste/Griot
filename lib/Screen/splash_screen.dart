import 'package:flutter/material.dart';
import 'launch_screen.dart'; // Make sure to import your LaunchScreen

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    navigateToLaunchScreen(context);
  }

  void navigateToLaunchScreen(BuildContext context) {
    Future.delayed(const Duration(seconds: 3), () {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LaunchScreen()),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Image de fond
          Positioned.fill(
            child: Image.asset(
              'assets/images/griot.png', // Assure-toi que le chemin est correct
              fit: BoxFit.cover,
            ),
          ),

          // Overlay semi-transparent
          Positioned.fill(
            child: Container(
              color: Colors.black.withOpacity(0.3), // Ajuste l'opacité ici
            ),
          ),

          // Icône centrée
          Center(
            child: Image.asset(
              'assets/images/logov.png', // Assure-toi que le chemin est correct
              width: 80, // Ajuste la taille selon ton besoin
              height: 80,
              color: Colors
                  .white, // Permet de garder l'icône en blanc si nécessaire
            ),
          ),
        ],
      ),
    );
  }
}
