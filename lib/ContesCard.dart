import 'package:flutter/material.dart';
import 'package:griot/Screen/ConteScreen.dart';

import 'Models/Conte.dart';

class Contescard extends StatelessWidget {

  final Conte comte;

  const Contescard({super.key, required this.comte});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => Contescreen(conte: comte),  // Passe ici l'objet Conte
          ),
        );
      },
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
        elevation: 4,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(comte.imageUrl, fit: BoxFit.cover),
             ListTile(

              title: Text( comte.titre, style: TextStyle(fontWeight: FontWeight.bold)),
            ),
             Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(comte.sousTitre),
            ),
             Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(comte.resume),
            ),
            const SizedBox(height: 8),
          ],
        ),
      ),
    );
  }
  }

