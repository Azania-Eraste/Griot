import 'package:flutter/material.dart';
import 'package:griot/CustomWidget/ContesCard.dart';
import 'package:griot/Controler/LieuController.dart';
import 'package:griot/Models/Conte.dart';

class SearchScreen extends StatefulWidget {

  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  final TextEditingController _searchController = TextEditingController();
  List<Conte> searchContes = [];

  @override
  void initState() {
    super.initState();
    _loadContes();
  }

  void _loadContes([String query = ""]) {
    setState(() {
      print(LieuController.getContesByLieu());
      searchContes = LieuController.getContesByLieu();
    });
  }

  void _filterContes(String query) {
    setState(() {
      if (query.isEmpty) {
        _loadContes(query);
      } else {
        searchContes = LieuController.getContesByLieu(query)
            .where((conte) =>
        conte.titre.toLowerCase().contains(query.toLowerCase()) ||
            conte.sousTitre.toLowerCase().contains(query.toLowerCase()))
            .toList();
      }
    });
    FocusScope.of(context).unfocus(); // Ferme le clavier après la recherche
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: GestureDetector(
        onTap: () => FocusScope.of(context).unfocus(),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ValueListenableBuilder<TextEditingValue>(
                valueListenable: _searchController,
                builder: (context, value, child) {
                  return TextField(
                    controller: _searchController,
                    decoration: InputDecoration(
                      hintText: "Que cherchez-vous ?",
                      hintStyle: const TextStyle(color: Colors.grey),
                      filled: true,
                      fillColor: Colors.white,
                      suffixIcon: value.text.isNotEmpty
                          ? IconButton(
                        icon: const Icon(Icons.clear, color: Colors.grey),
                        onPressed: () {
                          _searchController.clear();
                          _filterContes("");
                        },
                      )
                          : const Icon(Icons.search, color: Colors.grey),
                      border: OutlineInputBorder(borderRadius: BorderRadius.circular(8.0)),
                    ),
                    onChanged: _filterContes,
                  );
                },
              ),
            ),
            Expanded(
              child: searchContes.isEmpty
                  ? const Center(child: Text("Aucun conte trouvé"))
                  : ListView.builder(
                itemCount: searchContes.length,
                itemBuilder: (context, index) {
                  return Contescard(comte: searchContes[index]);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
