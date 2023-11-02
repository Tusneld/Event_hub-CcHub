import 'package:flutter/material.dart';

class MyAttendanceScreen extends StatefulWidget {
  const MyAttendanceScreen({super.key});

  @override
  _MyAttendanceScreenState createState() => _MyAttendanceScreenState();
}

class _MyAttendanceScreenState extends State<MyAttendanceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Attendance"),
      ),
      body: const Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "My Attendance",
              style: TextStyle(fontSize: 24),
            ),
            SizedBox(height: 20),
            AttendanceItem(
              eventType: "CcHub Dev Junction",
              date: "19 October 2023",
            ),
            AttendanceItem(
              eventType: "CcHub Dev Junction",
              date: "19 October 2023",
            ),
            AttendanceItem(
              eventType: "CcHub Dev Junction",
              date: "19 October 2023",
            ),
          ],
        ),
      ),
    );
  }
}

class AttendanceItem extends StatelessWidget {
  final String eventType;
  final String date;

  const AttendanceItem({super.key, required this.eventType, required this.date});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text("Event Type: $eventType"),
      subtitle: Text("Date: $date"),
    );
  }
}
