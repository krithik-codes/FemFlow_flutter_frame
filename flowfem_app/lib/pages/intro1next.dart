import 'package:flutter/material.dart';
import 'intro2.dart'; // Import the next page

class Intro1Next extends StatelessWidget {
  const Intro1Next({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // White background
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center, // Center align items
        children: [
          // Title
          Text(
            "FemFlow",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 45,
              fontWeight: FontWeight.w400,
              color: Color(0xFFFF5252),
            ),
            textAlign: TextAlign.center,
          ),
          
          SizedBox(height: 10), // Space between title and image

          // Image between title and subtitle
          Center(
            child: Image.asset(
              'assets/images/front_image.png', // Replace with actual image path
              width: 300,
              height: 300,
            ),
          ),

          SizedBox(height: 10), // Space between image and subtitle

          // Subtitle
          Text(
            "A period tracker and calendar",
            style: TextStyle(
              fontFamily: 'Poppins',
              fontSize: 22,
              fontWeight: FontWeight.w300,
              color: Color(0xFFFF5252),
            ),
            textAlign: TextAlign.center,
          ),

          SizedBox(height: 40), // Space before the button

          // Circular Button with Arrow
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => Intro2()), // Navigate to next page
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
        ],
      ),
    );
  }
}
