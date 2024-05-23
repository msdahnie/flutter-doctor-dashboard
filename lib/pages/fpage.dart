// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables


import 'package:flutter/material.dart';

class Fpage extends StatelessWidget {
  const Fpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Dashboard")),
      drawer: Drawer(
        child: Column(
          children: [
            //app logo place here
            DrawerHeader(
              child: Icon(Icons.favorite,
              size: 48,
              ),
              ),

              //for appointment
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("A P P O I N T M E N T"),
                onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context,'/appointment');
                },
              ),

              //for Patients Results
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("P A T I E N T  R E S U L T"),
                 onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context,'/patientresults');
                },
              ),

              // for laboratories
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("L A B O R A T O R I E S"),
                 onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context,'/laboratories');
                },
              ),

              //for notification
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("N O T I F I C A T I O N"),
                 onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context,'/notification');
                },
              ),

              //for account
              ListTile(
                leading: Icon(Icons.favorite),
                title: Text("A C C O U N T"),
                 onTap: () {
                  Navigator.pop(context);
                  Navigator.pushNamed(context,'/account');
                },
              ),

          ],
        ),
      ),
    );
  }
}
