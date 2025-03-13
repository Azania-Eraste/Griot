import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';
import 'package:griot/Controler/LieuController.dart';
import 'package:griot/Style/ColorAsset.dart';
import 'package:griot/Models/Conte.dart';
import 'package:griot/Models/Lieu.dart';
import 'package:griot/ContesCard.dart';

class Mapscreen extends StatefulWidget {
  const Mapscreen({super.key});

  @override
  State<Mapscreen> createState() => _MapscreenState();
}

class _MapscreenState extends State<Mapscreen> {
  String _searchQuery = "";
  LatLng _mapCenter = LatLng(48.8566, 2.3522); // Position par défaut
  LatLng? _currentLocation;
  LatLng? _destination;
  GoogleMapController? _mapController;
  bool _isSearching = false;
  Lieu? _selectedLieu;

  // Liste des lieux disponibles

  // Obtenir la localisation actuelle
  void _getCurrentLocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever) return;
      if (permission == LocationPermission.denied) return;

      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      setState(() {
        _currentLocation = LatLng(position.latitude, position.longitude);
        _mapCenter = _currentLocation!;
      });
      _moveCameraToLocation(_mapCenter);
    } catch (e) {
      print("Erreur localisation : $e");
    }
  }

  // Rechercher un lieu et vérifier s'il est dans notre liste
  void _searchLocation() async {
    if (_searchQuery.isEmpty) return;
    setState(() => _isSearching = true);

    try {
      List<Location> locations = await locationFromAddress(_searchQuery);
      if (locations.isNotEmpty) {
        LatLng foundLocation =
        LatLng(locations[0].latitude, locations[0].longitude);

        // Vérifier si le lieu est dans notre liste
        Lieu? lieuTrouve = LieuController.lieux.firstWhere(
                (lieu) =>
            lieu.nom.toLowerCase() == _searchQuery.toLowerCase(),
            orElse: () => Lieu(nom: "", description: "", imageUrl: "", contes: []));

        setState(() {
          _destination = foundLocation;
          _selectedLieu = lieuTrouve.nom.isNotEmpty ? lieuTrouve : null;
        });
        _moveCameraToLocation(foundLocation);
      }
    } catch (e) {
      print("Erreur recherche lieu : $e");
    } finally {
      setState(() => _isSearching = false);
    }
  }

  // Déplacer la caméra
  void _moveCameraToLocation(LatLng location) {
    _mapController?.animateCamera(CameraUpdate.newLatLng(location));
  }

  @override
  void initState() {
    super.initState();
    _getCurrentLocation();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Carte Google Maps
          GoogleMap(
            onMapCreated: (GoogleMapController controller) {
              _mapController = controller;
            },
            initialCameraPosition: CameraPosition(
              target: _mapCenter,
              zoom: 13.0,
            ),
            onTap: (LatLng point) {
              setState(() {
                _destination = point;
                _selectedLieu = null; // Réinitialiser le lieu sélectionné
              });
            },
            markers: {
              if (_currentLocation != null)
                Marker(
                  markerId: MarkerId('current_location'),
                  position: _currentLocation!,
                  infoWindow: InfoWindow(title: 'Votre position'),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueBlue),
                ),
              if (_destination != null)
                Marker(
                  markerId: MarkerId('destination'),
                  position: _destination!,
                  infoWindow: InfoWindow(title: 'Destination'),
                  icon: BitmapDescriptor.defaultMarkerWithHue(
                      BitmapDescriptor.hueRed),
                ),
            },
            myLocationEnabled: true,
            myLocationButtonEnabled: true,
          ),

          // Barre de recherche
          Positioned(
            top: 50,
            left: 10,
            right: 10,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) => setState(() => _searchQuery = value),
                    decoration: InputDecoration(
                      hintText: "D'où voulez-vous apprendre aujourd'hui ?",
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding:
                      EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      suffixIcon: _isSearching
                          ? CircularProgressIndicator()
                          : IconButton(
                        icon: Icon(Icons.search, color: Colors.black),
                        onPressed: _searchLocation,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(15)),
                      focusColor: ColorAsset.primary,
                    ),
                  ),
                ),
              ],
            ),
          ),

          // Bouton pour retrouver sa position
          Positioned(
            bottom: 90,
            left: 20,
            child: FloatingActionButton(
              onPressed: _getCurrentLocation,
              backgroundColor: ColorAsset.primary,
              child: Icon(Icons.my_location, color: ColorAsset.secondary),
            ),
          ),

          // Affichage des contes liés au lieu sélectionné
          if (_selectedLieu != null)
            Positioned(
              top: 500,
              left: 0,
              right: 0,
              bottom: 0, // Définit la limite inférieure pour le contenu
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.vertical(top: Radius.circular(15)),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black26,
                      blurRadius: 10,
                    ),
                  ],
                ),
                child: SingleChildScrollView( // Ajoute un SingleChildScrollView ici
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Text(
                        "Contes disponibles à ${_selectedLieu!.nom}",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 5),
                      _selectedLieu!.contes.isEmpty
                          ? Text("Aucun conte trouvé")
                          : Column(
                        children: _selectedLieu!.contes
                            .map((conte) => Contescard(comte: conte))
                            .toList(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
        ],
      ),
    );
  }
}
