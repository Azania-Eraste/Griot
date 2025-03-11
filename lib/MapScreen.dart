import 'dart:async'; // Import nécessaire pour Completer
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:geolocator/geolocator.dart';
import 'package:geocoding/geocoding.dart';

class Mapscreen extends StatefulWidget {
  const Mapscreen({super.key});

  @override
  State<Mapscreen> createState() => _MapscreenState();
}

class _MapscreenState extends State<Mapscreen> {
  String _selectedRide = "Standard";
  String _searchQuery = "";
  LatLng _mapCenter = LatLng(48.8566, 2.3522); // Initial map center
  LatLng? _currentLocation;
  LatLng? _destination;
  GoogleMapController? _mapController;
  bool _isSearching = false;

  // Demande la permission et obtient la localisation actuelle
  void _getCurrentLocation() async {
    try {
      LocationPermission permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.deniedForever) {
        print("La permission est refusée de manière permanente.");
        return;
      }
      if (permission == LocationPermission.denied) {
        print("La permission de localisation a été refusée.");
        return;
      }

      Position position = await Geolocator.getCurrentPosition(
          desiredAccuracy: LocationAccuracy.high);
      setState(() {
        _currentLocation = LatLng(position.latitude, position.longitude);
        _mapCenter = _currentLocation!;
      });
      _moveCameraToLocation(_mapCenter);
    } catch (e) {
      print("Erreur lors de l'obtention de la position : $e");
    }
  }

  // Recherche un lieu à partir de la chaîne de texte saisie
  void _searchLocation() async {
    if (_searchQuery.isEmpty) return;

    setState(() {
      _isSearching = true;
    });

    try {
      List<Location> locations = await locationFromAddress(_searchQuery);
      if (locations.isNotEmpty) {
        setState(() {
          _destination = LatLng(locations[0].latitude, locations[0].longitude);
        });
        _moveCameraToLocation(_destination!);
      }
    } catch (e) {
      print("Erreur lors de la recherche de l'adresse : $e");
    } finally {
      setState(() {
        _isSearching = false;
      });
    }
  }

  // Déplace la caméra vers un endroit spécifique
  void _moveCameraToLocation(LatLng location) {
    if (_mapController != null) {
      _mapController!.animateCamera(CameraUpdate.newLatLng(location));
    }
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
          Positioned(
            top: 40,
            left: 10,
            right: 10,
            child: Row(
              children: [
                Expanded(
                  child: TextField(
                    onChanged: (value) => setState(() => _searchQuery = value),
                    decoration: InputDecoration(
                      hintText: "Où allez-vous ?",
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                      suffixIcon: _isSearching
                          ? CircularProgressIndicator()
                          : IconButton(
                        icon: Icon(Icons.search, color: Colors.black),
                        onPressed: _searchLocation,
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(20)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 30,
            left: 20,
            child: FloatingActionButton(
              onPressed: _getCurrentLocation,
              backgroundColor: Colors.green,
              child: Icon(Icons.my_location, color: Colors.white),
            ),
          ),

        ],
      ),
    );
  }

  Widget _buildRideOption(IconData icon, String label) {
    bool isSelected = _selectedRide == label;
    return GestureDetector(
      onTap: () => setState(() => _selectedRide = label),
      child: Column(
        children: [
          CircleAvatar(
            backgroundColor: isSelected ? Colors.blue : Colors.grey[300],
            child: Icon(icon, color: isSelected ? Colors.white : Colors.black),
          ),
          SizedBox(height: 5),
          Text(label, style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold)),
        ],
      ),
    );
  }
}
