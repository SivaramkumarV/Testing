// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:login_2/Attendance.dart';
import 'package:login_2/grivences.dart';
import 'package:login_2/leave_request.dart';
import 'package:login_2/personal_info.dart';
import 'package:login_2/welcome_screen.dart';

class Drwr extends StatefulWidget {
  const Drwr({Key? key}) : super(key: key);

  @override
  static const id = 'drawer';
  _DrwrState createState() => _DrwrState();
}

class _DrwrState extends State<Drwr> {
  @override
  String name = 'KRISHNA MOORTHY';
  Widget build(BuildContext context) {
    return Container(
      color: Colors.yellow,
      child: Drawer(
        elevation: 16,
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: Colors.black),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    backgroundImage: AssetImage('assets/images/avatar.png'),
                  ),
                  Container(
                    margin: EdgeInsets.symmetric(vertical: 5),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(vertical: 15),
                      child: Center(child: Text('$name',style: TextStyle(color: Colors.white),)),
                    ),
                    color: Colors.black,
                  ),
                ],
              ),
            ),
            Container(
              color: Colors.yellow,
              child: TextButton(
                child: Text('PERSONAL INFO',style: TextStyle(color: Colors.white),),
                onPressed: () {
                  Navigator.pushNamed(context, Personalinfo.id);
                },
              ),
            ),
            Container(
              color: Colors.yellow,
              child: TextButton(
                child: Text('ATTENDANCE',style: TextStyle(color: Colors.white),),
                onPressed: () {
                  Navigator.pushNamed(context, Attendance.id);
                },
              ),
            ),
            Container(
              color: Colors.yellow,
              child: TextButton(
                child: Text('LEAVE REQUEST',style: TextStyle(color: Colors.white),),
                onPressed: () {
                  Navigator.pushNamed(context, leave_request.id);
                },
              ),
            ),
            Container(
              color: Colors.yellow,
              child: TextButton(
                child: Text('GRIVENCES',style: TextStyle(color: Colors.white),),
                onPressed: () {
                  Navigator.pushNamed(context, grivences.id);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
