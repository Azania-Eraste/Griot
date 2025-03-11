import 'package:flutter/material.dart';
import 'Models/Conte.dart';

class Contescreen extends StatefulWidget {
  final Conte? conte;
  const Contescreen({super.key, this.conte});

  @override
  State<Contescreen> createState() => _ContescreenState();
}

class _ContescreenState extends State<Contescreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(Icons.arrow_back),
        ),
        title: Text(widget.conte!.titre),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Affichage de l'image
            widget.conte!.imageUrl.isNotEmpty
                ? Image.asset(
              widget.conte!.imageUrl,
              fit: BoxFit.cover,
              width: double.infinity,
              height: 300,
            )
                : Center(child: Text("Aucune image disponible", style: TextStyle(fontSize: 18, fontStyle: FontStyle.italic))),
            SizedBox(height: 20), // Espacement avant le texte du conte
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.conte!.histoire,
                style: TextStyle(fontSize: 18, height: 1.5),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
