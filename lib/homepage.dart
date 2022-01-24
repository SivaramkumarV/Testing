// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:login_2/Attendance.dart';
import 'package:login_2/drawer_screen.dart';
import'package:login_2/personal_info.dart';
import 'package:login_2/welcome_screen.dart';



void main() {
  return runApp(Homepage());
}

class Homepage extends StatefulWidget {

  @override
  static const id = 'homepage';
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.white70,
        drawer: DrwrScreen(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFFEAD1F),
          automaticallyImplyLeading: true,
        ),
        body:
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Image(
                image: AssetImage('assets/images/waves.png'),
                width: double.infinity,
              )
            ],
          ),
        ),
      ),
    );
  }
}


