import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
import 'package:intl/intl.dart';

class TrackPage extends StatefulWidget {
  const TrackPage({super.key});

  @override
  _TrackPageState createState() => _TrackPageState();
}

class _TrackPageState extends State<TrackPage> {
  DateTime? selectedDate;
  DateTime? nextCycleStart;
  List<DateTime> predictionRange = [];

  void _selectDate(BuildContext context) async {
    DateTime? pickedDate = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (pickedDate != null && pickedDate != selectedDate) {
      setState(() {
        selectedDate = pickedDate;
        nextCycleStart = pickedDate.add(Duration(days: 28));
        predictionRange = List.generate(5, (index) => nextCycleStart!.subtract(Duration(days: 2 - index)));
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Track Your Cycle"),
        backgroundColor: Color(0xFFFF5252),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Section 1: Enter Menstrual Date
            Text(
              "Enter Your Last Period Date:",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10),
            ElevatedButton(
              onPressed: () => _selectDate(context),
              style: ElevatedButton.styleFrom(backgroundColor: Color(0xFFFF5252)),
              child: Text(
                selectedDate == null
                    ? "Select Date"
                    : "Selected: ${DateFormat.yMMMd().format(selectedDate!)}",
                style: TextStyle(color: Colors.white),
              ),
            ),
            SizedBox(height: 20),

            // Section 2: Calendar View
            TableCalendar(
              focusedDay: DateTime.now(),
              firstDay: DateTime.utc(2000, 1, 1),
              lastDay: DateTime.utc(2100, 12, 31),
              selectedDayPredicate: (day) {
                return selectedDate != null && isSameDay(day, selectedDate);
              },
              calendarFormat: CalendarFormat.month,
              calendarStyle: CalendarStyle(
                todayDecoration: BoxDecoration(
                  color: Colors.pinkAccent.withOpacity(0.5),
                  shape: BoxShape.circle,
                ),
                selectedDecoration: BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle,
                ),
                markerDecoration: BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle,
                ),
              ),
              onDaySelected: (selectedDay, focusedDay) {
                setState(() {
                  selectedDate = selectedDay;
                });
              },
              eventLoader: (day) {
                if (selectedDate != null && isSameDay(day, selectedDate!)) {
                  return ["Period Start"];
                } else if (nextCycleStart != null && isSameDay(day, nextCycleStart!)) {
                  return ["Expected Next Period"];
                } else if (predictionRange.any((d) => isSameDay(d, day))) {
                  return ["Buffer Period"];
                }
                return [];
              },
              calendarBuilders: CalendarBuilders(
                markerBuilder: (context, date, events) {
                  if (events.isNotEmpty) {
                    return Positioned(
                      bottom: 5,
                      child: Container(
                        width: 10,
                        height: 10,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: events.contains("Expected Next Period")
                              ? Colors.red
                              : Colors.orange,
                        ),
                      ),
                    );
                  }
                  return null;
                },
              ),
            ),
            SizedBox(height: 20),

            // Section 3: Expected Next Cycle
            if (nextCycleStart != null) ...[
              Text(
                "Next Expected Period:",
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Text(
                "${DateFormat.yMMMd().format(nextCycleStart!)}",
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
              SizedBox(height: 5),
              Text(
                "Expected Periods dates: ${DateFormat.yMMMd().format(predictionRange.first)} - ${DateFormat.yMMMd().format(predictionRange.last)}",
                style: TextStyle(fontSize: 16, color: Colors.grey[700]),
              ),
            ],
          ],
        ),
      ),
    );
  }
}
