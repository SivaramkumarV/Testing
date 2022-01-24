import 'package:flutter/material.dart';
import 'package:login_2/drawer_screen.dart';
import 'package:login_2/homepage.dart';

void main() => runApp(Attendance()

);
class Attendance extends StatelessWidget {
  const Attendance({Key? key}) : super(key: key);

  @override
  static const id = 'Attendance';
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushNamed(context, Homepage.id);
              },
              icon: Icon(Icons.home))
        ],
        title: Text('Attendance'),

      ),
      drawer: DrwrScreen(),
    );

  }
}