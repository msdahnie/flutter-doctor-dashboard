import 'package:flutter/material.dart';

class DoctorAccount extends StatefulWidget {
  const DoctorAccount({super.key});

  @override
  State<DoctorAccount> createState() => _DoctorAccountState();
}

class _DoctorAccountState extends State<DoctorAccount> {
  // Define variables to store profile information
  String name = "";
  String email = "";
  String specialization = "";

  // Create TextEditingControllers for each TextField
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final specializationController = TextEditingController();

  // Update these methods to handle form submission
  void _updateName(String newName) {
    setState(() {
      name = newName;
    });
  }

  void _updateEmail(String newEmail) {
    setState(() {
      email = newEmail;
    });
  }

  void _updateSpecialization(String newSpecialization) {
    setState(() {
      specialization = newSpecialization;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Doctor Account"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Name field
              TextField(
                decoration: InputDecoration(labelText: "Name"),
                controller: nameController, // Set initial value with controller
                onChanged: (value) => _updateName(value),
              ),
              SizedBox(height: 16.0),
              // Email field
              TextField(
                decoration: InputDecoration(labelText: "Email"),
                controller: emailController, // Set initial value with controller
                keyboardType: TextInputType.emailAddress,
                onChanged: (value) => _updateEmail(value),
              ),
              SizedBox(height: 16.0),
              // Specialization field
              TextField(
                decoration: InputDecoration(labelText: "Specialization"),
                controller: specializationController, // Set initial value with controller
                onChanged: (value) => _updateSpecialization(value),
              ),
              SizedBox(height: 16.0),
              // Save button (replace with actual saving logic)
              ElevatedButton(
                onPressed: () {
                  // Implement logic to save profile changes (e.g., API call)
                  print("Profile updated: $name, $email, $specialization");
                },
                child: Text("Save"),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
