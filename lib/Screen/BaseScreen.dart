import 'package:flutter/material.dart';
import 'package:griot/Screen/DetailScreen.dart';
import 'package:griot/Screen/FeedScreen.dart';
import 'package:griot/Screen/MapScreen.dart';
import '../Models/Conte.dart';
import '/Models/Lieu.dart';
import '/Style/colorAsset.dart';

class Basescreen extends StatefulWidget {
  const Basescreen({super.key});

  @override
  State<Basescreen> createState() => _BasescreenState();
}

class _BasescreenState extends State<Basescreen> {
  int _selectedIndex = 0; // Gère l'index sélectionné
  final List<Lieu> lieux = [];

  // Écrans à afficher en fonction de la sélection
  final List<Widget> _screens = [];

  @override
  void initState() {
    super.initState();


    // Exemple de données pour les lieux
    lieux.addAll([
      Lieu(
        nom: "Aza",
        description: "Premier Lieu sur mon feed Flutter !",
        imageUrl: "assets/images/Visily.jpg",
      ),
      Lieu(
        nom: "Aza",
        description: "Premier Lieu sur mon feed Flutter !",
        imageUrl: "assets/images/Visily.jpg",
      ),
      Lieu(
        nom: "Aza",
        description: "Premier Lieu sur mon feed Flutter !",
        imageUrl: "assets/images/Visily.jpg",
      ),
      Lieu(
        nom: "Aza",
        description: "Premier Lieu sur mon feed Flutter !",
        imageUrl: "assets/images/Visily.jpg",
      ),
      Lieu(
        nom: "Aza",
        description: "Premier Lieu sur mon feed Flutter !",
        imageUrl: "assets/images/Visily.jpg",
      ),    Lieu(
        nom: "Aza",
        description: "Premier Lieu sur mon feed Flutter !",
        imageUrl: "assets/images/Visily.jpg",
      ),
      Lieu(
        nom: "Aza",
        description: "Premier Lieu sur mon feed Flutter !",
        imageUrl: "assets/images/Visily.jpg",
      ),
      Lieu(
        nom: "Dev Flutter",
        description: "Flutter est génial pour créer des interfaces modernes !",
        imageUrl: "assets/images/Visily.jpg",
      ),
    ]);

    _screens.addAll(
        [
          FeedScreen(lieux: lieux),  // L'écran pour le feed
          Mapscreen(),            // L'écran pour la carte
        ]
    );

  }

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;  // Met à jour l'index sélectionné
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,

      home: Scaffold(
        body: _screens[_selectedIndex], // Affiche l'écran sélectionné
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedIndex, // Indique l'élément sélectionné
          onTap: _onItemTapped, // Mise à jour de l'index lors de la sélection
          items:  <BottomNavigationBarItem>[
            BottomNavigationBarItem(
                icon: Icon(Icons.home),
                label: 'Explorer',
                activeIcon: Icon(Icons.home, color: ColorAsset.primary,)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.map),
                label: 'Map',
                activeIcon: Icon(Icons.map, color: ColorAsset.primary,)
            ),
          ],
        ),
      ),
    );
  }
}
