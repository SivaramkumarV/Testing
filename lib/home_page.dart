import 'package:flutter/material.dart';
import 'package:login_2/drawer.dart';

void main() => runApp(Homepage()

    );
class Homepage extends StatelessWidget {
  const Homepage({Key? key}) : super(key: key);

  @override
  static const id = 'home_page';
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.yellow,
          title: Text('hi'),

        ),
        drawer: Drwr(),
      );

  }
}

