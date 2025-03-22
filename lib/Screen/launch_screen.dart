import 'package:flutter/material.dart';
import 'package:griot/Screen/onboarding_screen.dart';

class LaunchScreen extends StatelessWidget {
  const LaunchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          // Background grid of city skylines
          Positioned.fill(
            child: Image.asset(
              'assets/images/griot.png', // Make sure this asset exists
              fit: BoxFit.cover,
            ),
          ),

          // Overlay semi-transparent
          Positioned.fill(
            child: Container(
              color: Colors.black
                  .withOpacity(0.3), // Same opacity as splash screen
            ),
          ),

          // Content
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Spacer(flex: 3),

              // Logo in the center
              Container(
                margin: const EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.all(16),
                decoration: const BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: Image.asset(
                  'assets/images/logov.png', // Assure-toi que le chemin est correct
                  width: 50,
                  height: 50,
                ),
              ),
              const SizedBox(height: 16),

              // App title
              const Text(
                'Griot',
                style: TextStyle(
                  fontSize: 28,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              const SizedBox(height: 8),

              // Subtitle text
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 32),
                child: Text(
                  'Découvrez & Partagez notre culture à travers le monde',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 16,
                    color: Colors.white,
                  ),
                ),
              ),

              const Spacer(flex: 2),

              // Get Started button
              Padding(
                padding: const EdgeInsets.all(32),
                child: SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const OnboardingScreen()),
                      );
                      // Navigate to the next screen
                      // Add your navigation logic here
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      foregroundColor: Colors.white,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8),
                      ),
                    ),
                    child: const Text(
                      'Get Started',
                      style: TextStyle(fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}































// import 'package:flutter/material.dart';
// import 'onboarding_screen.dart';

// class LaunchScreen extends StatelessWidget {
//   const LaunchScreen({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       body: Container(
//         decoration: const BoxDecoration(
//           image: DecorationImage(
//             image: AssetImage('images/afrique_4.jpg'),
//             fit: BoxFit.cover,
//           ),
//         ),
//         child: Column(
//           mainAxisAlignment: MainAxisAlignment.center,
//           children: [
//             // Logo
//             Container(
//               padding: const EdgeInsets.all(24),
//               margin: const EdgeInsets.only(bottom: 20),
//               decoration: BoxDecoration(
//                 color: Colors.white,
//                 shape: BoxShape.circle,
//                 boxShadow: [
//                   BoxShadow(
//                     color: Colors.black.withOpacity(0.2),
//                     blurRadius: 10,
//                     spreadRadius: 2,
//                   ),
//                 ],
//               ),
//               child: Image.asset(
//               'images/masque_africain.png',
//                 width: 60,
//                 height: 60,
//               ),
//             ),
            
//             // App Name
//             const Text(
//               'Griot',
//               style: TextStyle(
//                 fontSize: 42,
//                 fontWeight: FontWeight.bold,
//                 color: Colors.white,
//                 shadows: [
//                   Shadow(
//                     offset: Offset(0, 2),
//                     blurRadius: 4,
//                     color: Color.fromRGBO(0, 0, 0, 0.5),
//                   ),
//                 ],
//               ),
//             ),
            
//             // Tagline
//             Container(
//               width: 250,
//               margin: const EdgeInsets.symmetric(vertical: 20),
//               child: const Text(
//                 'Discover and share cultures from around the world!',
//                 textAlign: TextAlign.center,
//                 style: TextStyle(
//                   fontSize: 16,
//                   color: Colors.white,
//                   fontWeight: FontWeight.w500,
//                   shadows: [
//                     Shadow(
//                       offset: Offset(0, 1),
//                       blurRadius: 3,
//                       color: Color.fromRGBO(0, 0, 0, 0.5),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
            
//             // Get Started Button
//             Padding(
//               padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 20),
//               child: ElevatedButton(
//                 onPressed: () {
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => const OnboardingScreen()),
//                   );
//                 },
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: const Color(0xFFD27842),
//                   foregroundColor: Colors.white,
//                   minimumSize: const Size(double.infinity, 50),
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(10),
//                   ),
//                 ),
//                 child: const Text(
//                   'Get Started',
//                   style: TextStyle(
//                     fontSize: 18,
//                     fontWeight: FontWeight.bold,
//                   ),
//                 ),
//               ),
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }