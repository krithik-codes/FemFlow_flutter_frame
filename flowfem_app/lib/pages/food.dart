import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  String? selectedSymptom;
  final Map<String, List<Map<String, String>>> foodSuggestions = {
    "Nausea": [
      {"food": "Ginger Tea", "benefit": "Helps reduce nausea and improves digestion."},
      {"food": "Bananas", "benefit": "Easy on the stomach and provides energy."},
      {"food": "Peppermint Tea", "benefit": "Soothes the stomach and relieves nausea."},
      {"food": "Crackers", "benefit": "Light and easy to digest, reducing nausea."},
      {"food": "Lemon Water", "benefit": "The citrus scent and vitamin C help ease nausea."},
      {"food": "Rice", "benefit": "A bland food that is easy on the stomach."}
    ],
    "Cramps": [
      {"food": "Dark Chocolate", "benefit": "Rich in magnesium, which helps relax muscles."},
      {"food": "Spinach", "benefit": "Contains iron and magnesium to reduce cramping."},
      {"food": "Avocado", "benefit": "High in potassium, reducing muscle cramps."},
      {"food": "Walnuts", "benefit": "Contains omega-3 to fight inflammation."},
      {"food": "Yogurt", "benefit": "Rich in calcium, which may reduce muscle pain."},
      {"food": "Pumpkin Seeds", "benefit": "Packed with magnesium to relax muscles."}
    ],
    "Heavy Cramps": [
      {"food": "Chamomile Tea", "benefit": "Has anti-inflammatory properties that help with pain relief."},
      {"food": "Salmon", "benefit": "Rich in omega-3 fatty acids to reduce inflammation."},
      {"food": "Turmeric", "benefit": "Contains curcumin to fight inflammation."},
      {"food": "Chia Seeds", "benefit": "Loaded with anti-inflammatory properties."},
      {"food": "Papaya", "benefit": "Helps regulate blood flow and ease cramps."},
      {"food": "Flaxseeds", "benefit": "Reduce period pain through hormone regulation."}
    ],
    "Back Pain": [
      {"food": "Almonds", "benefit": "Rich in calcium and magnesium for muscle relaxation."},
      {"food": "Turmeric Milk", "benefit": "Contains curcumin, which reduces inflammation and pain."},
      {"food": "Berries", "benefit": "Packed with antioxidants that reduce inflammation."},
      {"food": "Green Tea", "benefit": "Has anti-inflammatory benefits to ease pain."},
      {"food": "Sweet Potatoes", "benefit": "Rich in fiber and vitamins to reduce inflammation."},
      {"food": "Carrots", "benefit": "Contain beta-carotene, which reduces muscle pain."}
    ],
    "Fatigue": [
      {"food": "Oatmeal", "benefit": "Provides slow-releasing energy to fight fatigue."},
      {"food": "Eggs", "benefit": "High in protein and iron to boost energy levels."},
      {"food": "Lentils", "benefit": "Rich in iron to combat fatigue and weakness."},
      {"food": "Dark Leafy Greens", "benefit": "Help restore iron levels and prevent fatigue."},
      {"food": "Chia Seeds", "benefit": "Provide long-lasting energy and hydration."},
      {"food": "Oranges", "benefit": "High in vitamin C to reduce fatigue and boost energy."}
    ],
    "Bloating": [
      {"food": "Cucumber", "benefit": "Has a high water content that reduces bloating."},
      {"food": "Fennel Seeds", "benefit": "Help with digestion and reduce bloating."},
      {"food": "Watermelon", "benefit": "Hydrating and flushes out excess salt."},
      {"food": "Ginger", "benefit": "Aids digestion and relieves bloating."},
      {"food": "Pineapple", "benefit": "Contains bromelain, which aids digestion."},
      {"food": "Celery", "benefit": "Has diuretic properties that reduce bloating."}
    ],
    "Mood Swings": [
      {"food": "Dark Chocolate", "benefit": "Boosts serotonin levels, improving mood."},
      {"food": "Walnuts", "benefit": "Rich in omega-3s to support brain health."},
      {"food": "Bananas", "benefit": "Contain dopamine, a natural mood booster."},
      {"food": "Greek Yogurt", "benefit": "Supports gut health, which affects mood."},
      {"food": "Berries", "benefit": "Packed with antioxidants that enhance mood."},
      {"food": "Spinach", "benefit": "High in folate, which improves mental well-being."}
    ]
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Food Suggestions"),
        backgroundColor: Color(0xFFFF5252),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Select your symptom:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            DropdownButton<String>(
              value: selectedSymptom,
              hint: Text("Choose a symptom"),
              isExpanded: true,
              items: foodSuggestions.keys.map((String symptom) {
                return DropdownMenuItem<String>(
                  value: symptom,
                  child: Text(symptom),
                );
              }).toList(),
              onChanged: (String? newValue) {
                setState(() {
                  selectedSymptom = newValue;
                });
              },
            ),
            SizedBox(height: 20),
            Expanded(
              child: SingleChildScrollView(
                child: selectedSymptom != null
                    ? Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Recommended Foods:",
                            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                          ),
                          SizedBox(height: 10),
                          ...foodSuggestions[selectedSymptom]!.map((foodItem) {
                            return Card(
                              elevation: 2,
                              margin: EdgeInsets.symmetric(vertical: 5),
                              child: ListTile(
                                title: Text(foodItem["food"]!, style: TextStyle(fontWeight: FontWeight.bold)),
                                subtitle: Text(foodItem["benefit"]!),
                              ),
                            );
                          }).toList(),
                        ],
                      )
                    : Container(),
              ),
            )
          ],
        ),
      ),
    );
  }
}
