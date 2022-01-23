import 'package:flutter/material.dart';
import 'package:login_2/drawer.dart';
import 'package:login_2/home_page.dart';

void main() => runApp(grivences()

);
class grivences extends StatelessWidget {
  const grivences({Key? key}) : super(key: key);

  @override
  static const id = 'grivences';
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