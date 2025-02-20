import 'package:flutter/material.dart';

class FoodPage extends StatefulWidget {
  const FoodPage({super.key});

  @override
  _FoodPageState createState() => _FoodPageState();
}

class _FoodPageState extends State<FoodPage> {
  String? selectedSymptom;
  final Map<String, List<Map<String, String>>> foodSuggestions = {
    "Cramps": [
      {"food": "Dark Chocolate", "benefit": "Rich in magnesium, which helps relax muscles."},
      {"food": "Bananas", "benefit": "Contain potassium to prevent muscle contractions."},
      {"food": "Ginger Tea", "benefit": "Reduces inflammation and helps with pain relief."},
      {"food": "Yogurt", "benefit": "Rich in calcium, which may reduce muscle pain."},
      {"food": "Pumpkin Seeds", "benefit": "Packed with magnesium to relax muscles."}
    ],
    "Lower Back Pain": [
      {"food": "Turmeric Milk", "benefit": "Curcumin helps reduce inflammation and pain."},
      {"food": "Salmon", "benefit": "Rich in omega-3 fatty acids to ease inflammation."},
      {"food": "Almonds", "benefit": "Contain magnesium to help muscle relaxation."}
    ],
    "Abdominal Pain": [
      {"food": "Ginger Tea", "benefit": "Aids digestion and soothes abdominal discomfort."},
      {"food": "Papaya", "benefit": "Contains enzymes that ease digestion and bloating."},
      {"food": "Chamomile Tea", "benefit": "Has anti-inflammatory properties that relax muscles."}
    ],
    "Pelvic Pain": [
      {"food": "Flaxseeds", "benefit": "Rich in omega-3, helping reduce inflammation."},
      {"food": "Leafy Greens", "benefit": "Provide iron and magnesium to reduce pain."}
    ],
    "Heavy Cramps": [
      {"food": "Chia Seeds", "benefit": "Loaded with anti-inflammatory properties."},
      {"food": "Turmeric", "benefit": "Contains curcumin, which reduces inflammation."}
    ],
    "Leg Pain": [
      {"food": "Avocados", "benefit": "Rich in potassium to prevent muscle cramps."},
      {"food": "Coconut Water", "benefit": "Hydrates and replenishes electrolytes."}
    ],
    "Headaches": [
      {"food": "Watermelon", "benefit": "Hydrates the body to prevent headaches."},
      {"food": "Spinach", "benefit": "Contains magnesium, reducing headache severity."}
    ],
    "Joint Pain": [
      {"food": "Olive Oil", "benefit": "Contains anti-inflammatory properties to ease joint pain."},
      {"food": "Walnuts", "benefit": "Rich in omega-3 to reduce inflammation."}
    ],
    "Breast Tenderness": [
      {"food": "Flaxseeds", "benefit": "Regulates hormones and reduces breast pain."},
      {"food": "Soy", "benefit": "Contains phytoestrogens that help with hormonal balance."}
    ],
    "Hip Pain": [
      {"food": "Pineapple", "benefit": "Contains bromelain, which reduces inflammation."},
      {"food": "Turmeric", "benefit": "Reduces inflammation and eases pain."}
    ],
    "Nerve Pain": [
      {"food": "Salmon", "benefit": "Rich in omega-3 fatty acids to improve nerve function."},
      {"food": "Eggs", "benefit": "Contain vitamin B12, which supports nerve health."}
    ],
    "Rectal Pain": [
      {"food": "Fiber-Rich Foods", "benefit": "Help ease bowel movements and reduce pain."},
      {"food": "Prunes", "benefit": "Aid digestion and prevent constipation."}
    ],
    "Ovarian Pain": [
      {"food": "Turmeric Tea", "benefit": "Has curcumin, which reduces inflammation."},
      {"food": "Berries", "benefit": "Packed with antioxidants to fight inflammation."}
    ],
    "Stomach Pain with Nausea": [
      {"food": "Peppermint Tea", "benefit": "Soothes nausea and relieves stomach pain."},
      {"food": "Crackers", "benefit": "Easy to digest and settle the stomach."}
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