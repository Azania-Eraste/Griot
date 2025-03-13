import 'package:flutter/material.dart';
import 'package:griot/Screen/BaseScreen.dart';
import 'package:griot/Screen/splash_screen.dart';

import 'Models/Conte.dart';
import 'Models/Lieu.dart';
import 'Screen/DetailScreen.dart';
import 'Screen/FeedScreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {

  @override
  Widget build(BuildContext context) {


    return MaterialApp(
      routes: {
        '/home': (context) => FeedScreen(lieux: []),
        '/base': (context) => Basescreen(),
      },
      title: 'Griot App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}
