// ignore_for_file: prefer_const_constructors
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(Personalinfo());

class Personalinfo extends StatefulWidget {
  const Personalinfo({Key? key}) : super(key: key);

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
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffddccb6),
        appBar: AppBar(
          backgroundColor: Color(0xFFFEAD1F),
          elevation: 0,
        ),
        body: SingleChildScrollView(
          child: Column(

            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Image(
                image: AssetImage('images/waves.png'),
                width: double.infinity,
              ),
              CircleAvatar(
                radius: 75,
                backgroundColor: Colors.white,
                backgroundImage: AssetImage('images/avatar.png'),
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
                        height: 2, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                elevation: 8,
                color: Color(0xffddccb6),
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
                        height: 2, fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                elevation: 8,
                color: Color(0xffddccb6),
              )
            ],
          ),
        ),
      ),
    );
  }
}
