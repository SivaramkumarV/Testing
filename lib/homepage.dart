// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'package:login_2/drawer_screen.dart';




void main() {
  return runApp(Homepage());
}

class Homepage extends StatefulWidget {

  static const id = 'homepage';

  const Homepage({Key? key}) : super(key: key);
  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white70,
        drawer: Drwr(),
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Color(0xFFFEAD1F),
          automaticallyImplyLeading: true,
        ),
        body:
        SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: const [
              Image(
                image: AssetImage('assets/images/waves.png'),
                width: double.infinity,
              )
            ],
          ),
        ),
      );

  }
}


