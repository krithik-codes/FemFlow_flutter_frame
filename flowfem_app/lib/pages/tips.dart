import 'package:flutter/material.dart';

class TipsPage extends StatelessWidget {
  const TipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> remedies = [
      {
        "title": "Menstrual Cramps Relief",
        "recipe": "Drink warm ginger or chamomile tea. Apply a heating pad on the lower abdomen. Massage with essential oils like lavender or peppermint."
      },
      {
        "title": "Abdominal Pain Soother",
        "recipe": "Try yoga poses like child's pose or cat-cow stretch. Drink cinnamon tea for natural pain relief."
      },
      {
        "title": "Lower Back Pain Relief",
        "recipe": "Apply a warm compress to your lower back. Do gentle stretches and avoid prolonged sitting."
      },
      {
        "title": "Heavy Period Flow Control",
        "recipe": "Drink raspberry leaf tea to regulate menstrual flow. Increase iron-rich foods like spinach and lentils."
      },
      {
        "title": "Bloating Buster",
        "recipe": "Drink peppermint or fennel tea. Reduce salt intake and stay hydrated with warm lemon water."
      },
      {
        "title": "Fatigue Fighter",
        "recipe": "Stay hydrated and eat protein-rich snacks like almonds or yogurt. Try a short walk or light stretching."
      },
      {
        "title": "Mood Swings Balancer",
        "recipe": "Eat magnesium-rich foods like dark chocolate, bananas, and nuts. Practice deep breathing or light yoga."
      },
      {
        "title": "Headache During Periods",
        "recipe": "Apply a cold compress to your forehead. Stay hydrated and avoid caffeine if it triggers headaches."
      },
      {
        "title": "Nausea Relief",
        "recipe": "Drink ginger tea or chew fresh ginger. Avoid heavy or greasy foods and eat small meals."
      },
      {
        "title": "Breast Tenderness Soother",
        "recipe": "Apply a cold compress or wear a supportive bra. Reduce caffeine and salt intake."
      },
      {
        "title": "Digestive Issues Relief",
        "recipe": "Drink warm herbal teas like chamomile or peppermint. Avoid processed foods and dairy."
      },
      {
        "title": "Sleep Troubles During Periods",
        "recipe": "Drink a cup of warm chamomile tea before bed. Use relaxation techniques like deep breathing."
      },
      {
        "title": "Stress & Anxiety Reducer",
        "recipe": "Practice meditation or deep breathing exercises. Listen to calming music or take a warm bath."
      },
      {
        "title": "Leg Cramps Relief",
        "recipe": "Massage the affected area with warm oil. Stretch your legs before bedtime to prevent cramps."
      },
      {
        "title": "PMS Acne Treatment",
        "recipe": "Apply aloe vera gel or honey on affected areas. Drink plenty of water and eat antioxidant-rich foods."
      }
    ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Period Pain Remedies"),
        backgroundColor: Color(0xFFFF5252),
      ),
      body: ListView.builder(
        padding: EdgeInsets.all(10),
        itemCount: remedies.length,
        itemBuilder: (context, index) {
          return Card(
            margin: EdgeInsets.symmetric(vertical: 5),
            child: ExpansionTile(
              title: Text(
                remedies[index]["title"]!,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Text(remedies[index]["recipe"]!),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
