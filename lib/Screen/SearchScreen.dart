import 'package:flutter/material.dart';
import 'package:griot/ContesCard.dart';
import 'package:griot/Controler/ConteController.dart';
import 'package:griot/Models/Conte.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Conte> searchContes = ConteController.contes; // Initialisation directe

  void _filterContes(String query) {
    setState(() {
      if (query.isEmpty) {
        searchContes = ConteController.contes;
      } else {
        searchContes = ConteController.contes.where((conte) {
          return conte.titre.toLowerCase().contains(query.toLowerCase()) ||
              conte.sousTitre.toLowerCase().contains(query.toLowerCase());
        }).toList();
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: TextField(
          controller: _searchController,
          decoration: InputDecoration(
            hintText: "Que cherchez-vous ?",
            hintStyle: TextStyle(color: Colors.grey),
            filled: true,
            fillColor: Colors.white,
            suffixIcon: _searchController.text.isNotEmpty
                ? IconButton(
              icon: Icon(Icons.clear, color: Colors.grey),
              onPressed: () {
                _searchController.clear();
                _filterContes(""); // Réinitialise la liste
              },
            )
                : Icon(Icons.search, color: Colors.grey),
            border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
          ),
          onChanged: _filterContes,
        ),
      ),
      body: searchContes.isEmpty
          ? Center(child: Text("Aucun conte trouvé"))
          : ListView.builder(
        itemCount: searchContes.length,
        itemBuilder: (context, index) {
          return Contescard(comte: searchContes[index]);
        },
      ),
    );
  }
}
