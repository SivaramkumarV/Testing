// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
import 'package:login_2/drawer_screen.dart';
import 'package:login_2/homepage.dart';



void main() => runApp(Grivence()

);
class Grivence extends StatelessWidget {
  const Grivence({Key? key}) : super(key: key);

  static const id = 'grivences';
  @override
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
        title: Text('Grivences'),

      ),
      drawer: Drwr(),
    );

  }
}