import 'package:flutter/material.dart';
import 'package:griot/FeedScreen.dart';

import 'Models/Lieu.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
 MyApp({super.key});

  final List<Lieu> lieux = [
    Lieu(
      nom: "Aza",
      description: "Premier Lieu sur mon feed Flutter !",
      imageUrl: "images/Visily.jpg",
    ),
    Lieu(
      nom: "Aza",
      description: "Premier Lieu sur mon feed Flutter !",
      imageUrl: "Visily.jpg",
    ),
    Lieu(
      nom: "Aza",
      description: "Premier Lieu sur mon feed Flutter !",
      imageUrl: "Visily.jpg",
    ),
    Lieu(
      nom: "Aza",
      description: "Premier Lieu sur mon feed Flutter !",
      imageUrl: "Visily.jpg",
    ),
    Lieu(
      nom: "Aza",
      description: "Premier Lieu sur mon feed Flutter !",
      imageUrl: "Visily.jpg",
    ),    Lieu(
      nom: "Aza",
      description: "Premier Lieu sur mon feed Flutter !",
      imageUrl: "Visily.jpg",
    ),
    Lieu(
      nom: "Aza",
      description: "Premier Lieu sur mon feed Flutter !",
      imageUrl: "Visily.jpg",
    ),
    Lieu(
      nom: "Dev Flutter",
      description: "Flutter est génial pour créer des interfaces modernes !",
      imageUrl: "images/Visily.jpg",
    ),
  ];


  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: FeedScreen(lieux: lieux)
    );
  }
}



