import 'package:flutter/material.dart';
import 'globals.dart'; // Import the global variable file
import 'intro3.dart';

class Intro2 extends StatefulWidget {
  const Intro2({super.key});

  @override
  State<Intro2> createState() => _Intro2State();
}

class _Intro2State extends State<Intro2> {
  TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: Text(
                  'What should we call you?',
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontSize: 40, 
                    fontWeight: FontWeight.w600, 
                    color: Color(0xFFFF5252)
                  ),
                ),
              ),
              SizedBox(height: 20),
              TextField(
                controller: _nameController, // Capture the user's input
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30.0)),
                  ),
                  labelText: 'Your Name',
                ),
              ),
              SizedBox(height: 100), 
              Padding(
                padding: const EdgeInsets.only(bottom: 3.0),
                child: ElevatedButton(
                  onPressed: () {
                    setState(() {
                      userName = _nameController.text; // Store the name globally
                    });
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => Intro3()),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    shape: CircleBorder(),
                    padding: EdgeInsets.all(16),
                    backgroundColor: Color(0xFFFF5252),
                  ),
                  child: Icon(Icons.arrow_forward, color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
