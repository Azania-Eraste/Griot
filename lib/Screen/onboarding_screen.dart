import 'package:flutter/material.dart';
import 'package:griot/Style/textStyling.dart';

import '../CustomWidget/OnboardingPageScreen.dart';
import '../Style/ColorAsset.dart';

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _pageController = PageController();
  int _currentPage = 0;

  final List<Map<String, String>> _onboardingData = [
    {
      'image': 'assets/images/afrique_1.webp', // Carousel image with merry-go-round
      'text': 'Discover new content with more through our Feed page'
    },
    {
      'image': 'assets/images/accra_1.webp', // Kwame Nkrumah Memorial
      'text': 'Explore cultural landmarks from around the world'
    },
    {
      'image': 'assets/images/dakar_1.webp', // Elephants
      'text': 'Learn about wildlife conservation efforts in Africa'
    },
    {
      'image': 'assets/images/homme_1.webp', // Child with drone
      'text': 'See how technology connects with traditional cultures'
    },
  ];

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Page View for carousel
          PageView.builder(
            controller: _pageController,
            itemCount: _onboardingData.length,
            onPageChanged: (int page) {
              setState(() {
                _currentPage = page;
              });
            },
            itemBuilder: (context, index) {
              return OnboardingPage(
                imageUrl: _onboardingData[index]['image']!,
                text: _onboardingData[index]['text']!,
              );
            },
          ),

          // Bottom controls
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  // Skip button
                  TextButton(
                    onPressed: () {
                     Navigator.pushNamed(context, "/base");
                    },
                    child: Text(
                      'Skip',
                      style: TextStylling.onboardingbuttontextstyle
                    ),
                  ),

                  // Page indicators
                  Row(
                    children: List.generate(
                      _onboardingData.length,
                      (index) => Container(
                        margin: const EdgeInsets.symmetric(horizontal: 3),
                        height: 8,
                        width: 8,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: _currentPage == index
                              ? ColorAsset.primary
                              : Colors.grey.shade300,
                        ),
                      ),
                    ),
                  ),

                  // Next button
                  IconButton(
                    onPressed: () {
                      if (_currentPage < _onboardingData.length - 1) {
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 300),
                          curve: Curves.easeIn,
                        );
                      } else {
                        Navigator.pushNamed(context, "/base");
                      }
                    },
                    icon: Icon(
                      Icons.arrow_forward,
                      color: ColorAsset.primary,
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

