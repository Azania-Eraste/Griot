import 'package:flutter/material.dart';

import '../Style/textStyling.dart';

class OnboardingPage extends StatelessWidget {
  final String imageUrl;
  final String text;

  const OnboardingPage({
    super.key,
    required this.imageUrl,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.cover,
        ),
      ),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Colors.transparent,
              Colors.black.withOpacity(0.0),
            ],
            stops: const [0.6, 1.0],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 80),
              child: Text(
                  text,
                  textAlign: TextAlign.center,
                  style: TextStylling.onboardingtextstyle
              ),
            ),
          ],
        ),
      ),
    );
  }
}