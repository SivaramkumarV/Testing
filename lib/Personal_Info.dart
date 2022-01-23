import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main()=>runApp(Personalinfo());

class Personalinfo extends StatefulWidget {
  const Personalinfo({Key? key}) : super(key: key);

  @override
  _PersonalinfoState createState() => _PersonalinfoState();
}

class _PersonalinfoState extends State<Personalinfo> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Color(0xffddccb6),
        appBar: AppBar(
          backgroundColor: Color(0xFFFEAD1F),
          elevation: 0,
        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [Text('hello')],
        ),
      ),
    );
  }
}
