import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'main_1.dart'; // Import the main page

class Intro1Next extends StatelessWidget {
  const Intro1Next({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(255, 255, 255, 255), // Light pink background
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Title
            
            Text(
              "FemFlow",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 40,
                fontWeight: FontWeight.w800,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 10),

            // Subtitle
            Text(
              "A period tracker and calendar",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 22,
                fontWeight: FontWeight.w500,
                color: Colors.black54,
              ),
            ),
            SizedBox(height: 30),

            // Image
            Center(
              child: Image.asset(
                'assets/images/front_image.png', // Replace with actual image path
                width: 350,
                height: 350,
              ),
            ),
            SizedBox(height: 50),

            // Button with SVG Icon
            Center(
              child: ElevatedButton.icon(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(255, 82, 82, 1),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Main1()), // Navigate to main_1.dart
                  );
                },
                icon: SvgPicture.asset(
                  'assets/icons/arrow_right.svg', // Replace with actual SVG icon path
                  width: 24,
                  height: 24,
                  color: Colors.white,
                ),
                label: Text(
                  "Continue",
                  style: TextStyle(
                    fontSize: 18,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
