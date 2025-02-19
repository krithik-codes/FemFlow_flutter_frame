import 'package:flutter/material.dart';

class Intro3 extends StatefulWidget {
  const Intro3({super.key});

  @override
  _Intro3State createState() => _Intro3State();
}

class _Intro3State extends State<Intro3> {
  int selectedAge = 18; // Default age

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF1F3), // Light pink background
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What's your age?",
              style: TextStyle(
                fontFamily: 'Poppins',
                fontSize: 32,
                fontWeight: FontWeight.w700,
                color: Colors.black87,
              ),
            ),
            SizedBox(height: 30),
            
            // Age Picker (Dropdown)
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(12),
                border: Border.all(color: Colors.grey.shade300),
              ),
              child: DropdownButtonHideUnderline(
                child: DropdownButton<int>(
                  value: selectedAge,
                  items: List.generate(51, (index) {
                    int age = index + 10;
                    return DropdownMenuItem(
                      value: age,
                      child: Text(
                        age.toString(),
                        style: TextStyle(fontSize: 18),
                      ),
                    );
                  }),
                  onChanged: (value) {
                    setState(() {
                      selectedAge = value!;
                    });
                  },
                  isExpanded: true,
                ),
              ),
            ),
            
            SizedBox(height: 50),

            // Submit Button
            Center(
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Color.fromRGBO(255, 82, 82, 1),
                  padding: EdgeInsets.symmetric(horizontal: 100, vertical: 15),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                onPressed: () {
                  // Save age and navigate to the next page
                  print("Selected Age: $selectedAge"); // Debugging log
                  // Add navigation to the next page if needed
                },
                child: Text(
                  "Submit",
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
