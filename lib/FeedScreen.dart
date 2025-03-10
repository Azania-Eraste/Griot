import 'package:flutter/material.dart';
import 'package:griot/FeedCard.dart';

import 'Models/Lieu.dart';

class FeedScreen extends StatefulWidget {

  final List<Lieu> lieux;

  const FeedScreen({super.key, required this.lieux});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: widget.lieux.length,
        itemBuilder: (BuildContext context, int index) {
          return FeedCard(lieu: widget.lieux[index]);
        },),
    );
  }
}