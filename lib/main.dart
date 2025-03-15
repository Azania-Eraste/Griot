import 'package:flutter/material.dart';
import 'package:griot/Screen/BaseScreen.dart';
import 'package:griot/Screen/login_page.dart';
import 'package:griot/Screen/splash_screen.dart';
import 'Screen/FeedScreen.dart';
import 'Screen/signup_page.dart';

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
        '/login': (context) => LoginPage(),
        '/signup': (context) => SignupPage(),
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
