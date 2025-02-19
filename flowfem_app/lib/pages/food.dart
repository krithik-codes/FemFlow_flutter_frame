import 'package:flutter/material.dart';

class FoodPage extends StatelessWidget {
  const FoodPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Welcome to FemFlow!",
        style: TextStyle(
          fontSize: 24,
          fontWeight: FontWeight.bold,
          fontFamily: 'Poppins',
          color: Colors.black87,
        ),
      ),
    );
  }
}
