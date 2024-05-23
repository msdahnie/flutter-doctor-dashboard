// ignore_for_file: prefer_const_constructors

import 'package:flutprojects/pages/account.dart';
import 'package:flutprojects/pages/appointmet.dart';
import 'package:flutprojects/pages/fpage.dart';
import 'package:flutprojects/pages/laboratories.dart';
import 'package:flutprojects/pages/notification.dart';
import 'package:flutprojects/pages/patientResu.dart';
import 'package:flutter/material.dart';

void main() { // main function
  runApp(MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Fpage(),
      routes: {
        '/firstpage' :(context) => Fpage(),
        '/appointment' :(context) => Appoint(),
        '/notification' :(context) => Notif(),
        '/patientresults' :(context) => Patientresults(),
        '/account' :(context) => DoctorAccount(),
        '/laboratories' :(context) => Lab(),
      },
    );
  }
}


