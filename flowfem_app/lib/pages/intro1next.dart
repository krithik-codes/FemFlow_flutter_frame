import 'package:flutter/material.dart';
import 'intro2.dart'; // Import the main page

class Intro1Next extends StatelessWidget {
  const Intro1Next({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // White background
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 40),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center, // Center text
                children: [
                  SizedBox(height: 50), // Moves text down

                  // Centered Title
                  Text(
                    "FemFlow",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 45,
                      fontWeight: FontWeight.w400,
                      color: Color(0xFFFF5252),
                    ),
                    textAlign: TextAlign.center, // Center align text
                  ),
                  SizedBox(height: 10),

                  // Centered Subtitle
                  Text(
                    "A period tracker and calendar",
                    style: TextStyle(
                      fontFamily: 'Poppins',
                      fontSize: 22,
                      fontWeight: FontWeight.w300,
                      color: Color(0xFFFF5252),
                    ),
                    textAlign: TextAlign.center, // Center align text
                  ),
                ],
              ),
            ),
          ),

          // Image moved down
          Center(
            child: Image.asset(
              'assets/images/front_image.png', // Replace with actual image path
              width: 350,
              height: 350,
            ),
          ),
          SizedBox(height: 30), // Space between image and button

          // Circular Button with Arrow
          Padding(
            padding: const EdgeInsets.only(bottom: 40),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Intro2()), // Navigate to main_1.dart
                );
              },
              child: Container(
                width: 60, // Circle size
                height: 60,
                decoration: BoxDecoration(
                  color: Color(0xFFFF5252), // #ff5252 background
                  shape: BoxShape.circle, // Circular shape
                ),
                child: Icon(
                  Icons.arrow_forward, // Right arrow icon
                  size: 30,
                  color: Colors.white, // White arrow color
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
