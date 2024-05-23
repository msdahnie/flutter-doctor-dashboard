import 'package:flutter/material.dart';

class Appointment {
  final String name;
  final DateTime dateTime;

  Appointment({required this.name, required this.dateTime});
}

class Appoint extends StatefulWidget {
  const Appoint({super.key});

  @override
  State<Appoint> createState() => _AppointState();
}

class _AppointState extends State<Appoint> {
  final List<Appointment> appointments = [
    Appointment(name: "Ron Denver Liwanag", dateTime: DateTime.now().add(Duration(days: 2))),
    Appointment(name: "Pauline Andrea Olivo", dateTime: DateTime.now().subtract(Duration(days: 1))),
    Appointment(name: "Daniella Joy B. Jaymalin", dateTime: DateTime.now().add(Duration(days: 7))),
  ];
  String searchText = "";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Appointments"),
        actions: [
          IconButton(
            icon: Icon(Icons.sort),
            onPressed: () => _sortAppointments(),
          ),
        ],
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              decoration: InputDecoration(
                hintText: "Search Appointments",
                prefixIcon: Icon(Icons.search),
              ),
              onChanged: (text) => setState(() {
                searchText = text;
              }),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: appointments.length,
              itemBuilder: (context, index) {
                final appointment = appointments[index];
                if (searchText.isNotEmpty &&
                    !appointment.name.toLowerCase().contains(searchText.toLowerCase())) {
                  return Container(); // Hide if not matching search
                }
                return ListTile(
                  title: Text(appointment.name),
                  subtitle: Text(appointment.dateTime.toString()),
                  onTap: () => _showAppointmentDetails(context, appointment),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  void _sortAppointments() {
    setState(() {
      appointments.sort((a, b) => a.dateTime.compareTo(b.dateTime));
    });
  }

  void _showAppointmentDetails(BuildContext context, Appointment appointment) {
    showDialog(
      context: context,
      builder: (context) => AlertDialog(
        title: Text("Appointment Details"),
        content: Column(
          mainAxisSize: MainAxisSize.min, // Avoid excessive padding
          children: [
            Text("Name: ${appointment.name}"),
            Text("Date & Time: ${appointment.dateTime.toString()}"),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Close"),
          ),
        ],
      ),
    );
  }
}
