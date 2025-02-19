import 'package:flutter/material.dart';

class TrackPage extends StatelessWidget {
  const TrackPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Track"),
        backgroundColor: Color(0xFFFF5252),
      ),
      body: Center(
        child: Text(
          "Tracking Page",
          style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}
