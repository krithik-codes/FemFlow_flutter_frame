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
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30), // Add padding for better alignment
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start, // Aligns text to the left
                children: [
                  Center(
                    child: Image.asset(
                      'assets/images/intro_1.png', // Replace with actual image
                      width: 300,
                      height: 300,
                    ),
                  ),
                  SizedBox(height: 20),
                  Align(
                    alignment: Alignment.centerLeft, // Align text to the left
                    child: Padding(
                      padding: EdgeInsets.only(top: 20), // Add padding above the text
                      child: Text(
                        " Welcome to\n FlowFem .",
                        style: TextStyle(
                          fontFamily: 'Poppins',
                          height: 1.1,
                          fontSize: 40,
                          fontWeight: FontWeight.w800,
                          color: Colors.black87, // Adjust text color if needed
                        ),
                        textAlign: TextAlign.left,
                      ),
                    ),
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
                  borderRadius: BorderRadius.circular(20), // Rounded corners
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => Intro2()), // Navigate to next page
                );
              },
              child: Row(
                mainAxisSize: MainAxisSize.min, // Keeps row as small as possible
                children: [
                  Text(
                    "Next",
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.bold,
                      color: Colors.white, // Text color
                    ),
                  ),
                  SizedBox(width: 10), // Space between text and arrow
                  Image.asset(
                    'assets/images/arrow-right.svg', // Replace with actual arrow image path
                    width: 10, // Adjust size if needed
                    height: 10,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
