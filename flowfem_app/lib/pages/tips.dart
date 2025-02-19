import 'package:flutter/material.dart';

class TipsPage extends StatelessWidget {
  const TipsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List<Map<String, String>> remedies = [
    {"title": "Soothing Sore Throat Relief", "recipe": "Combine 1 tbsp honey, 1 tbsp lemon juice, and 1 cup warm water. Gargle for 30 seconds, repeat 3-4 times a day."},
    {"title": "Natural Headache Helper", "recipe": "Apply a cold compress to your forehead and temples. Drink plenty of water. Rest in a quiet, dark room."},
    {"title": "Tummy Trouble Tea", "recipe": "Brew a cup of ginger tea by steeping fresh ginger slices in hot water for 10 minutes. Add honey to taste."},
    {"title": "Cough Calmer", "recipe": "Mix 1 teaspoon of turmeric powder with a glass of warm milk. Drink before bed."},
    {"title": "Sleep Soundly", "recipe": "Drink a cup of warm chamomile tea before bed. Practice relaxation techniques like deep breathing."},
    {"title": "Minor Burn Relief", "recipe": "Run cool water over the burn for 10-15 minutes. Apply aloe vera gel."},
    {"title": "Muscle Soreness Soother", "recipe": "Take a warm bath with Epsom salts. Gently massage the affected area."},
    {"title": "Stress Buster", "recipe": "Practice deep breathing exercises. Listen to calming music. Take a walk in nature."},
    {"title": "Dry Skin Relief", "recipe": "Apply a moisturizer containing natural ingredients like shea butter or coconut oil."},
    {"title": "Nasal Congestion Relief", "recipe": "Use a saline nasal spray or neti pot to clear nasal passages. Inhale steam from a hot shower."},
    {"title": "Heartburn Relief", "recipe": "Mix 1/2 teaspoon of baking soda in a glass of water. Drink slowly. (Avoid this remedy if you have high blood pressure.)"},
    {"title": "Motion Sickness Soother", "recipe": "Ginger capsules or ginger ale can help settle the stomach."},
    {"title": "Minor Cut Care", "recipe": "Clean the wound with soap and water. Apply a bandage."},
    {"title": "Sunburn Relief", "recipe": "Apply aloe vera gel or a cool compress to the affected area."},
    {"title": "Insect Bite Relief", "recipe": "Apply a paste of baking soda and water to the bite."},
    {"title": "Toothache Soother (Temporary Relief)", "recipe": "Apply a cold compress to the cheek. Clove oil can also provide temporary relief. (See a dentist as soon as possible)"},
    {"title": "Upset Stomach Relief", "recipe": "Drink clear fluids like ginger ale or broth. Follow the BRAT diet (bananas, rice, applesauce, toast)."},
    {"title": "Energy Booster", "recipe": "Get enough sleep. Eat a balanced diet. Try a short walk or light exercise."},
    {"title": "Hangover Helper", "recipe": "Drink plenty of water and electrolytes. Rest."},
    {"title": "Stress Headache Relief", "recipe": "Practice relaxation techniques like meditation or yoga. Take a warm bath."}
  ];

    return Scaffold(
      appBar: AppBar(
        title: Text("Home Remedies"),
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
