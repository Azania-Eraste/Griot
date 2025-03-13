import 'package:flutter/material.dart';
import 'package:griot/FeedCard.dart';
import '../Models/Lieu.dart';

class FeedScreen extends StatefulWidget {
  final List<Lieu> lieux;

  const FeedScreen({super.key, required this.lieux});

  @override
  State<FeedScreen> createState() => _FeedScreenState();
}

class _FeedScreenState extends State<FeedScreen> {
  final PageController _pageController = PageController(viewportFraction: 0.9);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView.builder(
        scrollDirection: Axis.vertical,
        controller: _pageController,
        itemCount: widget.lieux.length,
        physics: const BouncingScrollPhysics(),
        itemBuilder: (context, index) {
          return AnimatedBuilder(
            animation: _pageController,
            builder: (context, child) {
              double scale = 1.0;
              if (_pageController.position.haveDimensions) {
                double page = _pageController.page ?? 0;
                scale = (1 - (page - index).abs() * 0.2).clamp(0.8, 1.0);
              }
              return Transform.scale(
                scale: scale,
                child: FeedCard(lieu: widget.lieux[index]),
              );
            },
          );
        },
      ),
    );
  }
}
