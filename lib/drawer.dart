// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';
void main()=> runApp(drawer());
class drawer extends StatefulWidget {
  const drawer({Key? key}) : super(key: key);

  @override
  _drawerState createState() => _drawerState();
}

class _drawerState extends State<drawer> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Drawer(elevation: 16,),) ; }
}
