// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:login_2/attendance.dart';
import 'package:login_2/grievances.dart';

import 'package:login_2/leave_request.dart';
import 'package:login_2/personal_info.dart';

class Drwr extends StatefulWidget {
  @override
  static const id = 'drawer';
  _DrwrState createState() => _DrwrState();
}

class _DrwrState extends State<Drwr> {
  @override
  String name = 'KRISHNA MOORTHY';
  Widget build(BuildContext context) {
    return Container(
      child: Drawer(
        elevation: 16,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: Color(0xFFFEAD1F)),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 35,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                  Container(

                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 10),
                      child: Center(
                          child: Text(
                        '$name\n  +91 90000 90000',
                        style: TextStyle(fontSize:16,color: Colors.white),
                      )),
                    ),
                    color: Color(0xFFFEAD1F),
                  ),
                ],
              ),
            ),
            Container(
              color: Color(0xfff5f5f5),
              child: TextButton(
                child: Text(
                  'PERSONAL INFO',
                  style: TextStyle(fontSize:18,color: Colors.black),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Personalinfo.id);
                },
              ),
            ),
            Container(
              color: Color(0xfff5f5f5),
              child: TextButton(
                child: Text(
                  'ATTENDANCE',
                  style: TextStyle(fontSize:18,color: Colors.black),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, Attendance.id);
                },
              ),
            ),
            Container(
              color: Color(0xfff5f5f5),
              child: TextButton(
                child: Text(
                  'LEAVE REQUEST',
                  style: TextStyle(fontSize:18,color: Colors.black),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, LeaveRequestWidget.id);
                },
              ),
            ),
            Container(
              color:Color(0xfff5f5f5),
              child: TextButton(
                child: Text(
                  'GRIVENCES',
                  style: TextStyle(fontSize:18,color: Colors.black),
                ),
                onPressed: () {
                  Navigator.pushNamed(context, GrievancesWidget.id);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
