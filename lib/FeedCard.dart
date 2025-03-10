import 'package:flutter/material.dart';
import 'package:griot/Style/textStyling.dart';
import 'Models/Lieu.dart';

class FeedCard extends StatelessWidget {
  final Lieu lieu;

  const FeedCard({super.key, required this.lieu});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (){

      Navigator.pushNamed(context, "/detail");

      },
      child: Container(
        height: MediaQuery.of(context).size.height - 50,
        width: MediaQuery.of(context).size.width,
        child: Card(
          margin: const EdgeInsets.symmetric(vertical: 16, horizontal: 16),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12), // Coins arrondis
          ),
          child: Stack(
            children: [
              Image.asset(lieu.imageUrl, fit: BoxFit.cover),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 35.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(lieu.nom, style: TextStylling.feedcardtitlestyle,),
                    Text(lieu.description, style: TextStylling.feedcardsbodystyle,)
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
