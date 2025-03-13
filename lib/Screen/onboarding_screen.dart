import 'package:flutter/material.dart';

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
      'image': 'images/afrique_1.jpg', // Carousel image with merry-go-round
      'text': 'Discover new content with more through our Feed page'
    },
    {
      'image': 'images/accra_1.jpg', // Kwame Nkrumah Memorial
      'text': 'Explore cultural landmarks from around the world'
    },
    {
      'image': 'images/dakar_1.jpg', // Elephants
      'text': 'Learn about wildlife conservation efforts in Africa'
    },
    {
      'image': 'images/homme_1.jpg', // Child with drone
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
                    child: const Text(
                      'Skip',
                      style: TextStyle(
                        color: Colors.black54,
                        fontSize: 16,
                      ),
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
                              ? Colors.black
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
                        // Navigate to Home screen or next screen
                        // Replace with your navigation code
                      }
                    },
                    icon: const Icon(
                      Icons.arrow_forward,
                      color: Colors.black,
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
                style: const TextStyle(
                  color: Colors.white,
                  fontSize: 18,
                  fontWeight: FontWeight.w500,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}





































// import 'package:flutter/material.dart';
// import 'launch_screen.dart';

// class OnboardingItem {
//   final String image;
//   final String title;

//   OnboardingItem({
//     required this.image,
//     required this.title,
//   });
// }

// class OnboardingPage extends StatelessWidget {
//   final OnboardingItem item;

//   const OnboardingPage({
//     super.key,
//     required this.item,
//   });

//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         // Status bar placeholder
//         Container(
//           height: MediaQuery.of(context).padding.top,
//           color: Colors.white,
//         ),
        
//         // // iPhone status bar mockup
//         // Container(
//         //   padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 5),
//         //   color: Colors.white,
//         //   child: const Row(
//         //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         //     children: [
//         //       Text(
//         //         '9:41',
//         //         style: TextStyle(fontWeight: FontWeight.bold),
//         //       ),
//         //       Row(
//         //         children: [
//         //           Icon(Icons.signal_cellular_4_bar, size: 16),
//         //           SizedBox(width: 5),
//         //           Icon(Icons.wifi, size: 16),
//         //           SizedBox(width: 5),
//         //           Icon(Icons.battery_full, size: 16),
//         //         ],
//         //       ),
//         //     ],
//         //   ),
//         // ),
        
//         // Image section
//         Expanded(
//           child: Container(
//             margin: const EdgeInsets.all(16),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(16),
//               boxShadow: [
//                 BoxShadow(
//                   color: Colors.black.withOpacity(0.1),
//                   blurRadius: 10,
//                   spreadRadius: 1,
//                 )
//               ],
//               image: DecorationImage(
//                 image: AssetImage(item.image),
//                 fit: BoxFit.cover,
//               ),
//             ),
//           ),
//         ),
        
//         // Text section
//         Container(
//           padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
//           child: Text(
//             item.title,
//             style: const TextStyle(
//               fontSize: 16,
//               fontWeight: FontWeight.w500,
//             ),
//             textAlign: TextAlign.center,
//           ),
//         ),
        
//         // Space for the pagination and buttons
//         const SizedBox(height: 100),
//       ],
//     );
//   }
// }

// class OnboardingScreen extends StatefulWidget {
//   const OnboardingScreen({super.key});

//   @override
//   State<OnboardingScreen> createState() => _OnboardingScreenState();
// }

// class _OnboardingScreenState extends State<OnboardingScreen> {
//   final PageController _pageController = PageController();
//   int _currentPage = 0;
  
//   final List<OnboardingItem> _onboardingItems = [
//     OnboardingItem(
//       image: 'assets/carousel.jpg',
//       title: 'Discover new content with ease through our Feed page',
//     ),
//     OnboardingItem(
//       image: 'assets/culture.jpg',
//       title: 'Explore diverse cultures from around the world',
//     ),
//     OnboardingItem(
//       image: 'assets/share.jpg',
//       title: 'Share your own cultural experiences with others',
//     ),
//     OnboardingItem(
//       image: 'assets/save.jpg',
//       title: 'Save your favorite cultural content for later',
//     ),
//     OnboardingItem(
//       image: 'assets/connect.jpg',
//       title: 'Connect with people who share your interests',
//     ),
//   ];

//   @override
//   void dispose() {
//     _pageController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Stack(
//         children: [
//           // Page View
//           PageView.builder(
//             controller: _pageController,
//             itemCount: _onboardingItems.length,
//             onPageChanged: (int page) {
//               setState(() {
//                 _currentPage = page;
//               });
//             },
//             itemBuilder: (context, index) {
//               return OnboardingPage(item: _onboardingItems[index]);
//             },
//           ),
          
//           // Skip button
//           Positioned(
//             bottom: 20,
//             left: 0,
//             right: 0,
//             child: Column(
//               children: [
//                 // Page indicator
//                 Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: List.generate(
//                     _onboardingItems.length,
//                     (index) => buildDot(index),
//                   ),
//                 ),
                
//                 const SizedBox(height: 20),
                
//                 // Skip Button
//                 Container(
//                   width: 120,
//                   decoration: BoxDecoration(
//                     color: Colors.white,
//                     borderRadius: BorderRadius.circular(20),
//                     border: Border.all(color: Colors.grey.shade300),
//                   ),
//                   child: TextButton(
//                     onPressed: () {
//                       // Navigate to main app
//                       // For now, we'll just go back to the launch screen
//                       Navigator.pushReplacement(
//                         context,
//                         MaterialPageRoute(builder: (context) => const LaunchScreen()),
//                       );
//                     },
//                     child: const Text(
//                       'Skip',
//                       style: TextStyle(
//                         color: Colors.black,
//                         fontWeight: FontWeight.w500,
//                       ),
//                     ),
//                   ),
//                 ),
//               ],
//             ),
//           ),
          
//           // Navigation arrows
//           Positioned(
//             bottom: 80,
//             left: 20,
//             child: _currentPage > 0
//                 ? IconButton(
//                     icon: const Icon(Icons.arrow_back_ios, color: Colors.grey),
//                     onPressed: () {
//                       _pageController.previousPage(
//                         duration: const Duration(milliseconds: 300),
//                         curve: Curves.easeInOut,
//                       );
//                     },
//                   )
//                 : const SizedBox.shrink(),
//           ),
          
//           Positioned(
//             bottom: 80,
//             right: 20,
//             child: _currentPage < _onboardingItems.length - 1
//                 ? IconButton(
//                     icon: const Icon(Icons.arrow_forward_ios, color: Colors.grey),
//                     onPressed: () {
//                       _pageController.nextPage(
//                         duration: const Duration(milliseconds: 300),
//                         curve: Curves.easeInOut,
//                       );
//                     },
//                   )
//                 : const SizedBox.shrink(),
//           ),
//         ],
//       ),
//     );
//   }

//   Widget buildDot(int index) {
//     return Container(
//       height: 10,
//       width: 10,
//       margin: const EdgeInsets.symmetric(horizontal: 5),
//       decoration: BoxDecoration(
//         shape: BoxShape.circle,
//         color: _currentPage == index
//             ? const Color(0xFFD27842)
//             : Colors.grey.shade300,
//       ),
//     );
//   }
// }