import 'package:flutter/material.dart';
import 'track.dart';
import 'food.dart';
import 'tips.dart';

class MainHome extends StatelessWidget {
  const MainHome({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "FemFlow",
          style: TextStyle(fontFamily: 'Poppins', fontWeight: FontWeight.w500,color: Colors.white),
        ),
        backgroundColor: const Color(0xFFFF5252),
        centerTitle: true,
        elevation: 0,
      ),
      body: Container(
        color: const Color(0xFFF8F8F8),
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            _buildBlock(context, "Track Your Period", const TrackPage(), const Color.fromRGBO(255, 82, 82, 1), BorderRadius.circular(25)), // Rounded corners
            const SizedBox(height: 20),
            _buildBlock(context, "Food & Health", const FoodPage(), const Color.fromRGBO(255, 82, 82, 1), BorderRadius.circular(25)), // Slightly less rounded
            const SizedBox(height: 20),
            _buildBlock(context, "Home Remedies Article", const TipsPage(), const Color.fromRGBO(255, 82, 82, 1), BorderRadius.circular(25),), // Custom shape
          ],
        ),
      ),
    );
  }

  Widget _buildBlock(BuildContext context, String title, Widget page, Color blockColor, BorderRadius borderRadius) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (context) => page),
        );
      },
      child: Container(
        width: double.infinity,
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          color: blockColor,
          borderRadius: borderRadius, // Use the provided BorderRadius
          boxShadow: [
            BoxShadow(
              color: Colors.black12.withOpacity(0.2),
              blurRadius: 10,
              spreadRadius: 3,
              offset: const Offset(0, 5),
            ),
          ],
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: Color.fromARGB(255, 255, 255, 255),
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}