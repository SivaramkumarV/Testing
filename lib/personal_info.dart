// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:login_2/drawer_screen.dart';
import 'package:login_2/homepage.dart';


class Personalinfo extends StatefulWidget {
  static const id = 'personal_info';
  @override

  _PersonalinfoState createState() => _PersonalinfoState();
}

class _PersonalinfoState extends State<Personalinfo> {
  @override
  Widget build(BuildContext context) {
    String name = 'KRISHNA MOORTHY';
    String dob = '10-02-2002';
    String bldtype = 'b+ve';
    String doj = '22-11-2021';
    String mob = '+91 90000 09999';
    String email = 'user123@gmail.com';
    return Scaffold(
      backgroundColor: Color(0xfff5f5f5),
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Homepage.id);
              },
              icon: Icon(Icons.home))
        ],
        backgroundColor: Color(0xFFFEAD1F),
        elevation: 0,
      ),
      drawer: Drwr(),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Image(
              image: AssetImage('assets/images/waves.png'),
              width: double.infinity,
            ),
            CircleAvatar(
              radius: 75,
              backgroundColor: Colors.white,
              backgroundImage: AssetImage('assets/images/avatar.png'),
            ),
            SizedBox(width: double.infinity),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'NAME : $name\nD.O.B : $dob\nBLOOD TYPE : $bldtype\nD.O.J : $doj',
                  style: TextStyle(
                      height: 2, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              elevation: 8,
              color: Color(0xfff5f5f5),
            ),
            Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              margin: EdgeInsets.symmetric(horizontal: 40, vertical: 20),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'MOBILE : $mob\nEMAIL :$email',
                  style: TextStyle(
                      height: 2, fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
              elevation: 8,
              color: Color(0xfff5f5f5),
            )
          ],
        ),
      ),
    );
  }
}
