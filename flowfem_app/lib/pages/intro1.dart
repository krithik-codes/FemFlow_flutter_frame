import 'package:flutter/material.dart';
import 'intro2.dart'; // Import the next page

class Intro1 extends StatelessWidget {
  const Intro1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            child: Center(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    'assets/images/intro_1.png', // Replace with actual image
                    width: 300,
                    height: 300,
                  ),
                  SizedBox(height: 20),
                  Text(
                    "Welcome to Women's Wellness App",
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Colors.black87, // Adjust text color if needed
                    ),
                    textAlign: TextAlign.center,
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(bottom: 40), // Adjust space from bottom
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color.fromRGBO(255, 82, 82, 1), // Button color
                padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15), // Button size
                shape: RoundedRectangleBorder(
                  
                  borderRadius: BorderRadius.circular(30), // Rounded corners
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Intro2()), // Navigate to next page
                );
              },
              child: Text(
                "Next",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                  color: Colors.white, // Text color
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
