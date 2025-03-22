import 'package:flutter/material.dart';
import 'package:griot/Controler/LieuController.dart';
import 'package:griot/Screen/FeedScreen.dart';
import 'package:griot/Screen/MapScreen.dart';
import 'package:griot/Screen/SearchScreen.dart';
import '/Style/colorAsset.dart';
import 'profile_page.dart';

class Basescreen extends StatefulWidget {
  const Basescreen({super.key});

  @override
  State<Basescreen> createState() => _BasescreenState();
}

class _BasescreenState extends State<Basescreen> {
  int _selectedIndex = 0; // Gère l'index sélectionné

  // Écrans à afficher en fonction de la sélection
  final List<Widget> _screens = [];

  @override
  void initState() {
    super.initState();

    _screens.addAll(
        [
          FeedScreen(lieux: LieuController.lieux),  // L'écran pour le feed
          SearchScreen(),
          Mapscreen(),            // L'écran pour la carte
          ProfilePage()
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
                icon: Icon(Icons.home, color: ColorAsset.grey,),
                label: 'Explorer',
                activeIcon: Icon(Icons.home, color: ColorAsset.primary,)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.search_rounded, color: ColorAsset.grey,),
                label: 'Recherche',
                activeIcon: Icon(Icons.search_rounded, color: ColorAsset.primary,)
            ),
            BottomNavigationBarItem(
                icon: Icon(Icons.map, color: ColorAsset.grey,),
                label: 'Map',
                activeIcon: Icon(Icons.map, color: ColorAsset.primary,)
            ),
          BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_sharp, color: ColorAsset.grey,),
                label: 'Compte',
                activeIcon: Icon(Icons.account_circle_sharp, color: ColorAsset.primary,)
            ),
          ],
          selectedItemColor: ColorAsset.primary,
        ),
      ),
    );
  }
}
