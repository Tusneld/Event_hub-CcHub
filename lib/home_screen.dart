import 'package:flutter/material.dart';
import 'package:event_hub/my_attendance_screen.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  String selectedEventType = 'CcHub Dev Junction'; // Default event type
  List<String> eventTypes = ['CcHub Dev Junction', 'Event Type 1', 'Event Type 2', 'Event Type 3'];

  void _submitForm() {
    // Implement the logic for submitting attendance
    print('Attendance submitted for $selectedEventType');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text(
              "Home",
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            const Text(
              "Welcome, [User's Name]",
              style: TextStyle(fontSize: 20),
            ),
            const Text("Please mark your attendance for today."),
            DropdownButton<String>(
              value: selectedEventType,
              items: eventTypes.map((String eventType) {
                return DropdownMenuItem<String>(
                  value: eventType,
                  child: Text(eventType),
                );
              }).toList(),
              onChanged: (value) {
                setState(() {
                  selectedEventType = value!;
                });
              },
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: _submitForm,
              style: ElevatedButton.styleFrom(
                primary: Colors.blue, // Blue background
              ),
              child: const Text(
                "SUBMIT",
                style: TextStyle(color: Colors.white),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
