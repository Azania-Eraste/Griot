import 'package:flutter/material.dart';
import 'package:griot/Controler/ConteController.dart';
import 'package:griot/Screen/DetailScreen.dart';
import 'package:griot/Style/ColorAsset.dart';
import 'package:griot/Style/textStyling.dart';
import 'Models/Lieu.dart';

class FeedCard extends StatelessWidget {
  final Lieu lieu;

  const FeedCard({super.key, required this.lieu});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height - 110,
      width: MediaQuery.of(context).size.width,
      child: Card(
        margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12), // Coins arrondis
        ),
        clipBehavior: Clip.hardEdge, // Permet de découper l'image aux coins arrondis
        child: Stack(
          children: [
            Positioned.fill(
              child: Image.asset(
                lieu.imageUrl,
                fit: BoxFit.cover, // L'image couvre tout l'espace
              ),
            ),
            Positioned(
              bottom: 80, // Ajustement pour ne pas chevaucher le bouton
              left: 25,
              right: 25,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    lieu.nom,
                    style: TextStylling.feedcardtitlestyle,

                  ),
                  Text(
                    lieu.description,
                    style: TextStylling.feedcardsbodystyle,
                  )
                ],
              ),
            ),
            Positioned(
                bottom: 15,
                right: 20,
              child: ElevatedButton(
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => DetailScreen(contes: ConteController.contes, nom_lieu: lieu.nom,)));
                    print('teste');
                  },
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      side: BorderSide(color: ColorAsset.primary, width: 2),
                      borderRadius: BorderRadius.circular(12), // Arrondi des bords
                      
                    ),
                    
                    padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12), // Espacement
                  ),
                  child: Text("En savoir plus ?",style: TextStylling.feedcardbuttonstyle,))
            )
          ],
        ),
      ),
    );
  }
}
